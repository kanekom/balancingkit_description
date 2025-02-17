<?xml version="1.0"?>
<robot name="balancingkit" xmlns:xacro="http://ros.org/wiki/xacro">
  <link name="base_link"/>

  <joint name="foot_print_joint" type="fixed">
    <origin xyz="0 0.02 0.0097" rpy="0 0 0"/>
    <parent link="base_link"/>
    <child link="base_link2"/>
  </joint>

  <link name="base_link2">
    <inertial>
      <mass value="0.0687016219743" />
      <inertia ixx="0.00004951341871460000" ixy="0.00000045970330081100" ixz="0.00000003906431665210" iyy="0.00007420445567420000" iyz="0.00000188480164726000" izz="0.00011062967861500000" />
    </inertial>
    <visual>
      <geometry>
        <mesh filename="package://balancingkit_description/meshes/stl/body/balboa_balancing_robot_kit_body_chassis_m.stl"/>
      </geometry>
    </visual>
    <collision>
      <geometry>
        <mesh filename="package://balancingkit_description/meshes/stl/body/balboa_balancing_robot_kit_body_chassis_m.stl"/>
      </geometry>
    </collision>
  </link>

  <joint name="circuit_board_joint" type="fixed">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <axis xyz="0 0 0"/>
    <parent link="base_link2"/>
    <child link="circuit_board"/>
  </joint>

  <link name="circuit_board">
    <inertial>
      <mass value="0.0116038891251" />
      <inertia ixx="0.00000000181524184545" ixy="-0.00000000011398958073" ixz="0.00000000001336676747" iyy="0.00000000181524184545" iyz="0.00000000001336676747" izz="0.00000000290410460112" />
    </inertial>
    <visual>
      <geometry>
        <mesh filename="package://balancingkit_description/meshes/stl/body/balboa_balancing_robot_kit_body_bal01a01_m.stl"/>
      </geometry>
    </visual>
    <collision>
      <geometry>
        <mesh filename="package://balancingkit_description/meshes/stl/body/balboa_balancing_robot_kit_body_bal01a01_m.stl"/>
      </geometry>
    </collision>
  </link>

  <joint name="battery_cover_joint" type="fixed">
    <origin xyz="0 0 0" rpy="0 0 0"/>
    <axis xyz="0 0 0"/>
    <parent link="base_link2"/>
    <child link="battery_cover"/>
  </joint>

  <link name="battery_cover">
    <inertial>
      <mass value="0.0135409963305" />
      <inertia ixx="0.000009581429872300" ixy="-0.000000000605271997" ixz="0.000000000019527174" iyy="0.000003388820896330" iyz="-0.000000230335514201" izz="0.000012756434222000" />
    </inertial>
    <visual>
      <geometry>
        <mesh filename="package://balancingkit_description/meshes/stl/body/balboa_balancing_robot_kit_body_battery-cover_m.stl"/>
      </geometry>
    </visual>
    <collision>
      <geometry>
        <mesh filename="package://balancingkit_description/meshes/stl/body/balboa_balancing_robot_kit_body_battery-cover_m.stl"/>
      </geometry>
    </collision>
  </link>

  <joint name="left_wheel_joint" type="continuous">
    <origin xyz="-0.051 -0.02 -0.0097" rpy="0 0 0"/>
    <axis xyz="1 0 0"/>
    <parent link="base_link2"/>
    <child link="left_wheel"/>
  </joint>

  <link name="left_wheel">
    <inertial>
      <origin xyz="0.051 0.02 0.0097" rpy="0 0 0"/>
      <mass value="0.0192200809141" />
      <inertia ixx="0.000021836231232000" ixy="0.000000000014016411" ixz="-0.000000000002704489" iyy="0.000011052671184900" iyz="-0.000000000002905832" izz="0.000011048923704800" />
    </inertial>
    <visual>
      <origin xyz="0.051 0.02 0.0097" rpy="0 0 0"/>
      <geometry>
<!-- <mesh filename="package://balancingkit_description/meshes/dae/wheel/balboa_balancing_robot_kit_wheel_left.dae"/> -->
        <mesh filename="package://balancingkit_description/meshes/stl/wheel/balboa_balancing_robot_kit_wheel_left_m.stl"/>
      </geometry>
    </visual>
    <collision>
      <origin xyz="0.051 0.02 0.0097" rpy="0 0 0"/>
      <geometry>
        <mesh filename="package://balancingkit_description/meshes/stl/wheel/balboa_balancing_robot_kit_wheel_left_m.stl"/>
      </geometry>
    </collision>
  </link>

  <joint name="right_wheel_joint" type="continuous">
    <origin xyz="0.051 -0.02 -0.0097" rpy="0 0 0"/>
    <axis xyz="1 0 0"/>
    <parent link="base_link2"/>
    <child link="right_wheel"/>
  </joint>

  <link name="right_wheel">
    <inertial>
      <origin xyz="-0.051 0.02 0.0097" rpy="0 0 0"/>
      <mass value="0.0192200809141" />
      <inertia ixx="0.000021836231232000" ixy="0.000000000014016411" ixz="-0.000000000002704489" iyy="0.000011052671184900" iyz="-0.000000000002905832" izz="0.000011048923704800" />
    </inertial>
    <visual>
      <origin xyz="-0.051 0.02 0.0097" rpy="0 0 0"/>
      <geometry>
<!--        <mesh filename="package://balancingkit_description/meshes/dae/wheel/balboa_balancing_robot_kit_wheel_right.dae"/> -->
        <mesh filename="package://balancingkit_description/meshes/stl/wheel/balboa_balancing_robot_kit_wheel_right_m.stl"/>
      </geometry>
    </visual>
    <collision>
      <origin xyz="-0.051 0.02 0.0097" rpy="0 0 0"/>
      <geometry>
        <mesh filename="package://balancingkit_description/meshes/stl/wheel/balboa_balancing_robot_kit_wheel_right_m.stl"/>
      </geometry>
    </collision>
  </link>
</robot>
