//******************************************************************
// 
//  Generated by RoboCompDSL
//  
//  File name: IDSLs/HumanPose.ice
//  Source: IDSLs/HumanPose.idsl
//  
//****************************************************************** 
#ifndef ROBOCOMPHUMANPOSE_ICE
#define ROBOCOMPHUMANPOSE_ICE
module RoboCompHumanPose
{
	struct Pose3D
	{
		 float x;
		 float z;
		 float ry;
		 bool pos_good;
		 bool rot_good;
		 int confidence = 0;
	};
	struct PersonType
	{
		 int id;
		 Pose3D pos;
		 int IDcamera;
	};
	sequence <PersonType> humansDetected;
	interface HumanPose
	{
		void obtainHumanPose (humansDetected list_of_humans);
	};
};

#endif
