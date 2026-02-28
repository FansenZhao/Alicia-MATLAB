%% 关节运动
% 创建机器人实例
robot = py.alicia_d_sdk.create_robot("COM17");
robot.set_home();
% 设置目标关节位置（以度为单位）
target_joints_deg = [-30, 30.0, 30.0, 20.0, -20.0, 10.0];

robot.set_robot_state( ... 
            target_joints=target_joints_deg, ...
            joint_format='deg', ...
            wait_for_completion=true);

robot.set_home();
% 断开连接
robot.disconnect();