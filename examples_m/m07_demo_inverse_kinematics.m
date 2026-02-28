%% 逆向运动
% 创建机器人实例
robot = py.alicia_d_sdk.create_robot("COM17");
robot.set_home();

ik_result = robot.set_pose( ... 
        target_pose=[0.31, 0.14, 0.15, -0.38, 0, +0.92, 0],... 
        execute=true);

robot.set_home();
% 断开连接
robot.disconnect();