#include "ros/ros.h"
#include "std_msgs/Float32.h"
#include "geometry_msgs/PoseStamped.h"
#include "geometry_msgs/PoseArray.h"

#include "kdl/chain.hpp"
#include "kdl/chainfksolver.hpp"
#include "kdl/chainfksolverpos_recursive.hpp"
#include "kdl/chainiksolverpos_lma.hpp"
#include "kdl/frames_io.hpp"

#define UR10_DOF 6
#define PI 3.1415926535897932384626433f

geometry_msgs::PoseStamped endEffectorPosition;

geometry_msgs::PoseArray cupPositions;
bool isCupPositionsAvailable = false;

geometry_msgs::PoseArray cupTargetPositions;
bool isCupTargetPositionsAvailable = false;
bool is_cup_taken =  false; // 
bool gone_midway =  false; // 

uint8_t cupIndex = 0;
std::vector<bool> isCupReached;
std::vector<bool> isCupGripped;
std::vector<bool> isCupTargetReached;
std::vector<bool> isCupFinished;

geometry_msgs::Pose calculatedPosition;

float calculateError (const geometry_msgs::PoseStamped& endEffectorPosition) {
    float error = 0;
    error += pow(calculatedPosition.position.x - endEffectorPosition.pose.position.x,2) * 10000;
    error += pow(calculatedPosition.position.y - endEffectorPosition.pose.position.y,2) * 10000;
    error += pow(calculatedPosition.position.z - endEffectorPosition.pose.position.z,2) * 10000;
    error = sqrt(error);
	if(error < 8) {is_cup_taken = true; //
	}		
	if((error < 43) & (error > 8) & is_cup_taken){gone_midway = true;}
	
    return error;
}

/*
 * TODO: You should show the error on the console.
 */
void endEffectorPositionCallback(const geometry_msgs::PoseStampedConstPtr& endEffectorPositionMessage) {
    endEffectorPosition = *endEffectorPositionMessage;
    std::cout << "Calculated Position   :" << "[ "<< calculatedPosition.position.x << " , " << calculatedPosition.position.y << " , " << calculatedPosition.position.z << " ]" << std::endl;
    std::cout << "End Effector Position :" << "[ "<< endEffectorPositionMessage->pose.position.x << " , " << endEffectorPositionMessage->pose.position.y << " , " << endEffectorPositionMessage->pose.position.z << " ]" << std::endl;
    std::cout << "Bonus Kinematic Error :" << calculateError(*endEffectorPositionMessage) << std::endl;
}

void cupPositionaCallback(const geometry_msgs::PoseArrayConstPtr& cupPositionsCallback) {
    cupPositions = *cupPositionsCallback.get();
    isCupPositionsAvailable = true;
}

void cupTargetPositionaCallback(const geometry_msgs::PoseArrayConstPtr& cupTargetPositionsCallback) {
    cupTargetPositions = *cupTargetPositionsCallback.get();
    isCupTargetPositionsAvailable = true;
}

KDL::Chain initChainUR10() {
    KDL::Chain chain;

  //DO You should write the correct chain for UR10
	KDL::Segment s0 = KDL::Segment(KDL::Joint(KDL::Joint::RotZ), //z
                KDL::Frame(KDL::Rotation::RPY(0.0, 0.0 ,PI),
                          KDL::Vector(-0.0926501 , -4.23356e-08 , 0.08335) )
                    );
	
	KDL::Segment s1 = KDL::Segment(KDL::Joint(KDL::Joint::RotX), //-x
                KDL::Frame(KDL::Rotation::RPY(0.0,0.0,0.0),
                          KDL::Vector(-0.0926501 - (-0.112263) ,-4.23356e-08 - (0.000568758) , 0.695438 - 0.08335) )
                    );

	KDL::Segment s2 = KDL::Segment(KDL::Joint(KDL::Joint::RotX), //-x
                KDL::Frame(KDL::Rotation::RPY(0.0,0.0,0.0),
                          KDL::Vector(-0.112263  - (-0.1058),0.000568758 - (-6.32342e-05),1.26764-0.695438 ) )
                    );

	KDL::Segment s3 = KDL::Segment(KDL::Joint(KDL::Joint::RotX), //-x
                KDL::Frame(KDL::Rotation::RPY(0.0,0.0,0.0),
                          KDL::Vector(-0.1058 - (-0.164229),-6.32342e-05 -(-6.33453e-05),1.32492-1.26764) )
                    );

	KDL::Segment s4 = KDL::Segment(KDL::Joint(KDL::Joint::RotZ), //z
                KDL::Frame(KDL::Rotation::RPY(0.0,0.0,0.0),
                          KDL::Vector(-0.164229 - (-0.221548), -6.33453e-05 - (-6.3571e-05),1.3833-1.32492) )
                    );

	KDL::Segment s5 = KDL::Segment(KDL::Joint(KDL::Joint::RotX), //-x
                KDL::Frame(KDL::Rotation::RPY(0.0,0.0,0.0),
                          KDL::Vector(-0.221548 - (-0.332061) ,-6.3571e-05 - (-2.44681e-05) ,1.38318-1.3833) )
                    );
	
    chain.addSegment(s0);
    chain.addSegment(s1);
    chain.addSegment(s2);
    chain.addSegment(s3);
    chain.addSegment(s4);
    chain.addSegment(s5);


    return chain;
}

int main(int argc, char **argv) {
    ros::init(argc,argv,"UR10_Bonus_Kinematics");

    ros::NodeHandle node;

    ros::Publisher joints[6];
    joints[0] = node.advertise<std_msgs::Float32>("/UR10/jointAngles/joint001",1000);
    joints[1] = node.advertise<std_msgs::Float32>("/UR10/jointAngles/joint002",1000);
    joints[2] = node.advertise<std_msgs::Float32>("/UR10/jointAngles/joint003",1000);
    joints[3] = node.advertise<std_msgs::Float32>("/UR10/jointAngles/joint004",1000);
    joints[4] = node.advertise<std_msgs::Float32>("/UR10/jointAngles/joint005",1000);
    joints[5] = node.advertise<std_msgs::Float32>("/UR10/jointAngles/joint006",1000);

    for(int index=0;index<UR10_DOF;index++){
        std_msgs::Float32 jointMessage;
        jointMessage.data = 0;
        joints[index].publish(jointMessage);
    }

    ros::Subscriber endEffectorPositionSubscriber = node.subscribe<geometry_msgs::PoseStamped>("/UR10/positions/endEffectorPosition",1000,endEffectorPositionCallback);

    ros::Subscriber cupPositionsSubscriber = node.subscribe<geometry_msgs::PoseArray>("/task/positions/cups",1000,cupPositionaCallback);
    ros::Subscriber cupTargetPositionsSubscriber = node.subscribe<geometry_msgs::PoseArray>("/task/positions/cuptargets",1000,cupTargetPositionaCallback);

    ros::Publisher gripper = node.advertise<std_msgs::Float32>("/UR10/gripper/closingAngle",1000);

    ros::Rate loop(10);

    KDL::Chain chain = initChainUR10();

    geometry_msgs::PoseArray goalPositions;

	int gripper_count = 0 ;
	bool cup_gripped = false;

    while(ros::ok()) {
        if(isCupPositionsAvailable && isCupTargetPositionsAvailable) {
            /*
             * TODO: Take the cup and give it to Bill
             */
	  KDL::ChainFkSolverPos_recursive forwardKinematicSolver = KDL::ChainFkSolverPos_recursive(chain);

        KDL::Frame goalEndEffectorPosition;

        bool isCurrentSetted = false;
	std_msgs::Float32 jointMessage;
		jointMessage.data = 5.5;


	if(is_cup_taken) {gripper.publish(jointMessage); gripper_count++ ; 
		if(gripper_count > 10) {goalPositions = cupTargetPositions;cup_gripped = true;}
	}else { goalPositions = cupPositions;
	}


	if(0 < goalPositions.poses.size()) {
                calculatedPosition = goalPositions.poses.at(0);
                isCurrentSetted = true;
            }
	if(isCurrentSetted) { if(cup_gripped){ 
				if(gone_midway){ goalEndEffectorPosition = KDL::Frame(
                        KDL::Rotation::RPY(0,0,PI),
                        KDL::Vector(calculatedPosition.position.x,calculatedPosition.position.y,calculatedPosition.position.z));}
				else{goalEndEffectorPosition = KDL::Frame(
                        KDL::Rotation::RPY(0,0,PI),
                        KDL::Vector(calculatedPosition.position.x/2,calculatedPosition.position.y,calculatedPosition.position.z));}
          //-0.714789 , -0.155105 , 0.88193)
            }else{ goalEndEffectorPosition = KDL::Frame(
                        KDL::Rotation::RPY(0,0,0),
                        KDL::Vector( calculatedPosition.position.x-0.08,calculatedPosition.position.y,calculatedPosition.position.z)
            );}
           

	// You can use this matrix for ChainIkSolverPos_LMA
	Eigen::Matrix<double,6,1> L;
	L(0)=1;L(1)=1;L(2)=1;
	L(3)=0.01;L(4)=0.01;L(5)=0.01;
	
	//create iksolver
	KDL::ChainIkSolverPos_LMA iksolver = KDL::ChainIkSolverPos_LMA(chain,L );
		
	// Create joint arrays
	unsigned int nj = chain.getNrOfJoints();
	KDL::JntArray initialjointpositions = KDL::JntArray(nj);
	KDL::JntArray jointpositions = KDL::JntArray(nj);
	
	
	int ret = iksolver.CartToJnt(initialjointpositions, goalEndEffectorPosition, jointpositions);

	 // Create the frame that will contain the results
	KDL::Frame cartpos;   
 
	// Calculate forward position kinematics
	bool kinematics_status;
	kinematics_status = forwardKinematicSolver.JntToCart(jointpositions,cartpos);
	if(kinematics_status>=0){
		//cartpos.M rot matrix
		//cartpos.p end effector pos
	    //std::cout << "KDL end effector :"<< cartpos.p <<std::endl;
	   // printf("%s \n","Succes");
	}else{
	    printf("%s \n","Error: could not calculate forward kinematics :(");
	}


            /*
             * DO: Publish the found joint angles.
		     */
		if(ret == 0) {

		jointMessage.data = jointpositions(0);
		joints[0].publish(jointMessage);
		jointMessage.data = jointpositions(1);
		joints[1].publish(jointMessage);
		jointMessage.data = jointpositions(2);
		joints[2].publish(jointMessage);
		jointMessage.data = jointpositions(3);
		joints[3].publish(jointMessage);
		jointMessage.data = jointpositions(4);
		joints[4].publish(jointMessage);
		jointMessage.data = jointpositions(5);
		joints[5].publish(jointMessage);}else{ 	 std::cout << ret ;   printf("%s \n","Error: could not calculate inverse kinematics :("); }
        }}





        ros::spinOnce();
        loop.sleep();
    }


	return 0;
}
