% 创建机器人实例
robot = py.alicia_d_sdk.create_robot("COM17");

gripper_value = robot.get_robot_state("gripper");

% 夹爪值（0-1000，0为完全闭合，1000为完全张开）
robot.set_robot_state(gripper_value=1000, wait_for_completion=true, gripper_speed_deg_s=100);
pause(1)
robot.set_robot_state(gripper_value=0   , wait_for_completion=true, gripper_speed_deg_s=100);
pause(1)
robot.set_robot_state(gripper_value=500 , wait_for_completion=true, gripper_speed_deg_s=100);
pause(1)
robot.set_robot_state(gripper_value=1000, wait_for_completion=true, gripper_speed_deg_s=100);
pause(1)

% 断开连接
robot.disconnect();