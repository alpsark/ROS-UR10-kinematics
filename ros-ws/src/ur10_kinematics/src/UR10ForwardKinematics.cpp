#include "ros/ros.h"
#include "std_msgs/Float32.h"
#include "geometry_msgs/PoseStamped.h"

#include "kdl/chain.hpp"
#include "kdl/chainfksolver.hpp"
#include "kdl/chainfksolverpos_recursive.hpp"
#include "kdl/chainiksolverpos_lma.hpp"
#include "kdl/frames_io.hpp"

#include "sstream"
#include "iostream"
#include "fstream"

#define UR10_DOF 6
#define PI 3.1415926535897932384626433f

geometry_msgs::Pose calculatedPosition;

float calculateError (const geometry_msgs::PoseStamped& endEffectorPosition) {
    float error = 0;
    error += pow(calculatedPosition.position.x - endEffectorPosition.pose.position.x,2) * 10000;
    error += pow(calculatedPosition.position.y - endEffectorPosition.pose.position.y,2) * 10000;
    error += pow(calculatedPosition.position.z - endEffectorPosition.pose.position.z,2) * 10000;
    error = sqrt(error);
    return error;
}


/*
 * TODO: You should show the error on the console. 
 */
void endEffectorPositionCallback(const geometry_msgs::PoseStampedConstPtr& endEffectorPositionMessage) {
    std::cout << "Calculated Position   :" << "[ "<< calculatedPosition.position.x << " , " << calculatedPosition.position.y << " , " << calculatedPosition.position.z << " ]" << std::endl;
    std::cout << "End Effector Position :" << "[ "<< endEffectorPositionMessage->pose.position.x << " , " << endEffectorPositionMessage->pose.position.y << " , " << endEffectorPositionMessage->pose.position.z << " ]" << std::endl;
    std::cout << "Forward Kinematic Error :" << calculateError(*endEffectorPositionMessage) << std::endl;
}

//joint pos callback
void jointPoscallback0 (const geometry_msgs::PoseStampedConstPtr& jointMessage) {
     std::cout << "Joint0 Position :" << "[ "<< jointMessage->pose.position.x << " , " << jointMessage->pose.position.y << " , " << jointMessage->pose.position.z << " ]" << std::endl;
}

void jointPoscallback1 (const geometry_msgs::PoseStampedConstPtr& jointMessage) {
     std::cout << "Joint1 Position :" << "[ "<< jointMessage->pose.position.x << " , " << jointMessage->pose.position.y << " , " << jointMessage->pose.position.z << " ]" << std::endl;
}

void jointPoscallback2 (const geometry_msgs::PoseStampedConstPtr& jointMessage) {
     std::cout << "Joint2 Position :" << "[ "<< jointMessage->pose.position.x << " , " << jointMessage->pose.position.y << " , " << jointMessage->pose.position.z << " ]" << std::endl;
}

void jointPoscallback3 (const geometry_msgs::PoseStampedConstPtr& jointMessage) {
     std::cout << "Joint3 Position :" << "[ "<< jointMessage->pose.position.x << " , " << jointMessage->pose.position.y << " , " << jointMessage->pose.position.z << " ]" << std::endl;
}

void jointPoscallback4 (const geometry_msgs::PoseStampedConstPtr& jointMessage) {
     std::cout << "Joint4 Position :" << "[ "<< jointMessage->pose.position.x << " , " << jointMessage->pose.position.y << " , " << jointMessage->pose.position.z << " ]" << std::endl;
}
void jointPoscallback5 (const geometry_msgs::PoseStampedConstPtr& jointMessage) {
     std::cout << "Joint5 Position :" << "[ "<< jointMessage->pose.position.x << " , " << jointMessage->pose.position.y << " , " << jointMessage->pose.position.z << " ]" << std::endl;
}
//base callback

void basePoscallback (const geometry_msgs::PoseStampedConstPtr& baseMessage) {
     std::cout << "Base Position :" << "[ "<< baseMessage->pose.position.x << " , " << baseMessage->pose.position.y << " , " << baseMessage->pose.position.z << " ]" << std::endl;
}

KDL::Chain initChainUR10() {
    KDL::Chain chain;
	 /*Base Position :[ 0.241427 , -2.05357e-07 , 0.04465 ]
		joint positions are relative to base
		Joint0 Position :[ 0 , 0 , 0 ]
		Joint1 Position :[ -0.0926501 , -4.23356e-08 , 0.08335 ]--
		Joint2 Position :[ -0.112263 , 0.000568758 , 0.695438 ]--
		Joint3 Position :[ -0.1058 , -6.32342e-05 , 1.26764 ]--
		Joint4 Position :[ -0.164229 , -6.33453e-05 , 1.32492 ]--
		Joint5 Position :[ -0.221548 , -6.3571e-05 , 1.3833 ]--
		End Effector Position :[ -0.332061 , -2.44681e-05 , 1.38318 ] */

	/*   
	DH	/	teta	/	d		/	a	/	alfa	/
	0		PI/2	/0.08335		/0		/	0	/

	1	/	-PI/2	/-(-0.112263--0.0926501)/0.695438-0.08335/	0	/

	2	/	0	/-(-0.1058--0.112263)/1.26764 -	0.695438/	0	/

	3	/	PI/2	/-(-0.164229--0.1058)/0			/	PI/2	/

	4	/	0	/1.3833 -1.32492 	/	0	/	-PI/2	/

	5	/	0	/-(-0.332061 --0.221548)/	0	/	0	/

	*/


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
    ros::init(argc,argv,"UR10_Forward_Kinematics");

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

	//sub jointcallback
	ros::Subscriber jointcallback[6];
 	jointcallback[0] = node.subscribe<geometry_msgs::PoseStamped>("/UR10/positions/jointPosition001",1000,jointPoscallback0);
    jointcallback[1] = node.subscribe<geometry_msgs::PoseStamped>("/UR10/positions/jointPosition002",1000,jointPoscallback1);
    jointcallback[2] = node.subscribe<geometry_msgs::PoseStamped>("/UR10/positions/jointPosition003",1000,jointPoscallback2);
    jointcallback[3] = node.subscribe<geometry_msgs::PoseStamped>("/UR10/positions/jointPosition004",1000,jointPoscallback3);
    jointcallback[4] = node.subscribe<geometry_msgs::PoseStamped>("/UR10/positions/jointPosition005",1000,jointPoscallback4);
    jointcallback[5] = node.subscribe<geometry_msgs::PoseStamped>("/UR10/positions/jointPosition006",1000,jointPoscallback5);

	//sub basecallback 
	ros::Subscriber basecallback = node.subscribe<geometry_msgs::PoseStamped>("/UR10/positions/basePosition",1000,basePoscallback);

	
    ros::Rate loop(10);	
 

    KDL::Chain chain = initChainUR10();

    float jointValues[7] = {0};

    while(ros::ok()) {
	
        /* DO: You should read values of joints[0:5] from file as degree.
        */
	std::ifstream infile ;
	infile.open("/home/alpsark/ros-ws/src/ur10_kinematics/src/angles"); 
	
	
	if(infile){
	infile >> jointValues[0] >> jointValues[1]  >>jointValues[2]  >> jointValues[3] >> jointValues[4] >> jointValues[5]  ;
	}else{printf("%s \n","Error: could not open file :(");}
	

       /*
        * DO: You should calculate the End Effector Position from ChainFkSolverPos_recursive (Not: This library uses radian (joint * PI / 180)). 
        */
 	// Create joint arrays
	unsigned int nj = chain.getNrOfJoints();
	KDL::JntArray jointpositions = KDL::JntArray(nj);
	
	for(int index = 0; index<nj ; index++){
	jointpositions(index) =  jointValues[index] * PI / 180 ;}
	


	 // Create the frame that will contain the results
	KDL::Frame cartpos;  
  
	// Create solver based on kinematic chain
    	KDL::ChainFkSolverPos_recursive fksolver = KDL::ChainFkSolverPos_recursive(chain);
 
 
	// Calculate forward position kinematics
	bool kinematics_status;
	kinematics_status = fksolver.JntToCart(jointpositions,cartpos);
	if(kinematics_status>=0){
		//cartpos.M rot matrix
		//cartpos.p end effector pos
	    //std::cout << "KDL end effector :"<< cartpos.p <<std::endl;
	   // printf("%s \n","Succes");
	}else{
	    printf("%s \n","Error: could not calculate forward kinematics :(");
	}

       /*
        * DO: Publish the found joint angels to topic. 
        */		
	std_msgs::Float32 jointMessage;
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
	joints[5].publish(jointMessage);
       /*
        * DO: Fill the calculatedLocation variable for error calculation.
        */
	calculatedPosition.position.x = cartpos.p[0];
	calculatedPosition.position.y = cartpos.p[1];
	calculatedPosition.position.z = cartpos.p[2];
        ros::spinOnce();
        loop.sleep();
    }


	return 0;
}
