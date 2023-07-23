/*该类的功能主要是导入全局地图，进行1hz的全局地图三种格式的发布，包括三维点云、
 三维栅格、二维栅格。
 edited by goldqiu -2022-04-9
*/

#include "map_conversion/utility.hpp"
#include "map_conversion/tic_toc.h"
ros::Publisher global_grid_map_pub;
u_int16_t pub_cout = 0;
void publishGlobal_gridMap(nav_msgs::OccupancyGrid &grid_map_msg){
         if (global_grid_map_pub.getNumSubscribers() == 0)
        {
            return;
        }
             global_grid_map_pub.publish(grid_map_msg);
            std::cout<<"success pub 2dgrid_map"<<std::endl;
}

int main(int argc, char** argv)
{
   google::InitGoogleLogging(argv[0]);
   FLAGS_log_dir = WORK_SPACE_PATH + "/Log";
   FLAGS_alsologtostderr = 1;

   ros::init(argc, argv, "global_submap_node");
   ros::NodeHandle nh; //创建ros句柄
   //创建读取参数的对象
   YAML::Node config = YAML::LoadFile(WORK_SPACE_PATH+"/config/params.yaml"); 

  //创建点云处理对象，传入参数为前面创建的读取参数的对象
   std::shared_ptr<Pointcloud2dProcess> pointcloud_2d_process_ptr = std::make_shared<Pointcloud2dProcess>(config);
   std::shared_ptr<Pointcloud3dProcess> pointcloud_3d_process_ptr = std::make_shared<Pointcloud3dProcess>(config);
   // Pointcloud2dProcess *pointcloud_2d_process_ptr = new Pointcloud2dProcess(config);
   // Pointcloud3dProcess *pointcloud_3d_process_ptr = new Pointcloud3dProcess(config);

   //创建ros发布和接受话题对象
   std::shared_ptr<CloudPublisher> global_cloud_pub_ptr = std::make_shared<CloudPublisher>(nh, "global_cloud", pointcloud_2d_process_ptr->topic_frame_id, 100);
   std::shared_ptr<CloudPublisher> global_3d_grid_pub_ptr = std::make_shared<CloudPublisher>(nh, "global_inflation_map", pointcloud_2d_process_ptr->topic_frame_id, 100);
   global_grid_map_pub = nh.advertise<nav_msgs::OccupancyGrid>("/grid_map_global", 100);

   nav_msgs::OccupancyGrid global_grid_map_msg;
   TicToc t_map; //创建计时对象

   //导入全局地图并初始化，其中转换为2d和3d栅格格式
   pointcloud_2d_process_ptr->global_map_init();
   pointcloud_2d_process_ptr->Pointcloud_to_2d_grid(pointcloud_2d_process_ptr->global_map_after_filter,global_grid_map_msg,pointcloud_2d_process_ptr->global_map_resolution);
   global_grid_map_msg.header.frame_id = pointcloud_2d_process_ptr->topic_frame_id;
   CloudData grid_cloud_data;
   pointcloud_3d_process_ptr->pointcloud_to_3dGridMap(pointcloud_2d_process_ptr->global_map_no_filter,grid_cloud_data);
   printf("global map init time %f ms \n", t_map.toc()); //打印初始化需要的时间
   ros::Rate loop_rate(10); 

    while(ros::ok())
  {
     ros::spinOnce();
     //全局地图或者全局子地图的更新频率为10s
     pub_cout++;
     if(pub_cout>100)
     {
              //这里发布三个话题，分别为原始全局地图、3d栅格、2d栅格
         global_cloud_pub_ptr->Publish(pointcloud_2d_process_ptr->global_map_data);
         global_3d_grid_pub_ptr->Publish(grid_cloud_data.cloud_ptr);
         publishGlobal_gridMap(global_grid_map_msg);
         pub_cout = 0;
     }

     loop_rate.sleep();
  }
   return 0;
}
