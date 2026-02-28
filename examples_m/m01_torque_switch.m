%% 开启和关闭力矩

% 创建机械臂对象
robot = py.alicia_d_sdk.create_robot("COM17");

% 请手动握住机械臂！！！
robot.torque_control('off');

% 开启力矩
robot.torque_control('on');

% 回到零点
robot.set_home();

% 断开连接
robot.disconnect();