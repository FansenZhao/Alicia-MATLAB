% 创建机器人实例
robot = py.alicia_d_sdk.create_robot("COM17");

% 检查连接状态
if robot.is_connected()
    disp("连接成功！")
    
    % 打印当前状态
    robot.print_state()
    
    % 移动到初始位置
    robot.set_home()
    
    % 断开连接
    robot.disconnect()
else
    print("连接失败，请检查串口")
end