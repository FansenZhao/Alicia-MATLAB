% 创建机械臂对象
robot = py.alicia_d_sdk.create_robot("COM17");

% 获取版本信息
robot_version = robot.get_robot_state("version");

% 打印信息
disp(['Unique ID: ',char(robot_version.get('serial_number'))])
disp(['Hardware Version: ',char(robot_version.get('hardware_version'))])
disp(['Firmware Version: ',char(robot_version.get('firmware_version'))])

% gripper_type
gripper_type = robot.get_robot_state("gripper_type");
disp(['gripper_type: ',char(gripper_type)])

% 断开连接
robot.disconnect();