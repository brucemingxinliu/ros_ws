# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "arm_motion_action: 7 messages, 0 services")

set(MSG_I_FLAGS "-Iarm_motion_action:/home/toshiki/ros_ws/devel/share/arm_motion_action/msg;-Iroscpp:/opt/ros/indigo/share/roscpp/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Iactionlib:/opt/ros/indigo/share/actionlib/cmake/../msg;-Iactionlib_msgs:/opt/ros/indigo/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(arm_motion_action_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceActionGoal.msg" NAME_WE)
add_custom_target(_arm_motion_action_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arm_motion_action" "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceActionGoal.msg" "geometry_msgs/Point:geometry_msgs/Quaternion:actionlib_msgs/GoalID:std_msgs/Header:arm_motion_action/arm_interfaceGoal:geometry_msgs/PoseStamped:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceFeedback.msg" NAME_WE)
add_custom_target(_arm_motion_action_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arm_motion_action" "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceFeedback.msg" ""
)

get_filename_component(_filename "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceResult.msg" NAME_WE)
add_custom_target(_arm_motion_action_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arm_motion_action" "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceResult.msg" "geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceActionFeedback.msg" NAME_WE)
add_custom_target(_arm_motion_action_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arm_motion_action" "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceActionFeedback.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header:arm_motion_action/arm_interfaceFeedback"
)

get_filename_component(_filename "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceGoal.msg" NAME_WE)
add_custom_target(_arm_motion_action_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arm_motion_action" "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceGoal.msg" "geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceAction.msg" NAME_WE)
add_custom_target(_arm_motion_action_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arm_motion_action" "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceAction.msg" "arm_motion_action/arm_interfaceActionFeedback:geometry_msgs/Point:geometry_msgs/Quaternion:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:arm_motion_action/arm_interfaceResult:arm_motion_action/arm_interfaceActionGoal:std_msgs/Header:arm_motion_action/arm_interfaceFeedback:arm_motion_action/arm_interfaceGoal:geometry_msgs/PoseStamped:arm_motion_action/arm_interfaceActionResult:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceActionResult.msg" NAME_WE)
add_custom_target(_arm_motion_action_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arm_motion_action" "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceActionResult.msg" "geometry_msgs/Point:geometry_msgs/Quaternion:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header:geometry_msgs/PoseStamped:arm_motion_action/arm_interfaceResult:geometry_msgs/Pose"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(arm_motion_action
  "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceGoal.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arm_motion_action
)
_generate_msg_cpp(arm_motion_action
  "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arm_motion_action
)
_generate_msg_cpp(arm_motion_action
  "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceResult.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arm_motion_action
)
_generate_msg_cpp(arm_motion_action
  "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arm_motion_action
)
_generate_msg_cpp(arm_motion_action
  "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arm_motion_action
)
_generate_msg_cpp(arm_motion_action
  "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceAction.msg"
  "${MSG_I_FLAGS}"
  "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceActionFeedback.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceResult.msg;/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceActionGoal.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceFeedback.msg;/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceGoal.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceActionResult.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arm_motion_action
)
_generate_msg_cpp(arm_motion_action
  "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arm_motion_action
)

### Generating Services

### Generating Module File
_generate_module_cpp(arm_motion_action
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arm_motion_action
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(arm_motion_action_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(arm_motion_action_generate_messages arm_motion_action_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceActionGoal.msg" NAME_WE)
add_dependencies(arm_motion_action_generate_messages_cpp _arm_motion_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceFeedback.msg" NAME_WE)
add_dependencies(arm_motion_action_generate_messages_cpp _arm_motion_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceResult.msg" NAME_WE)
add_dependencies(arm_motion_action_generate_messages_cpp _arm_motion_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceActionFeedback.msg" NAME_WE)
add_dependencies(arm_motion_action_generate_messages_cpp _arm_motion_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceGoal.msg" NAME_WE)
add_dependencies(arm_motion_action_generate_messages_cpp _arm_motion_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceAction.msg" NAME_WE)
add_dependencies(arm_motion_action_generate_messages_cpp _arm_motion_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceActionResult.msg" NAME_WE)
add_dependencies(arm_motion_action_generate_messages_cpp _arm_motion_action_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(arm_motion_action_gencpp)
add_dependencies(arm_motion_action_gencpp arm_motion_action_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS arm_motion_action_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(arm_motion_action
  "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceGoal.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arm_motion_action
)
_generate_msg_lisp(arm_motion_action
  "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arm_motion_action
)
_generate_msg_lisp(arm_motion_action
  "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceResult.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arm_motion_action
)
_generate_msg_lisp(arm_motion_action
  "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arm_motion_action
)
_generate_msg_lisp(arm_motion_action
  "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arm_motion_action
)
_generate_msg_lisp(arm_motion_action
  "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceAction.msg"
  "${MSG_I_FLAGS}"
  "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceActionFeedback.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceResult.msg;/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceActionGoal.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceFeedback.msg;/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceGoal.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceActionResult.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arm_motion_action
)
_generate_msg_lisp(arm_motion_action
  "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arm_motion_action
)

### Generating Services

### Generating Module File
_generate_module_lisp(arm_motion_action
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arm_motion_action
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(arm_motion_action_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(arm_motion_action_generate_messages arm_motion_action_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceActionGoal.msg" NAME_WE)
add_dependencies(arm_motion_action_generate_messages_lisp _arm_motion_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceFeedback.msg" NAME_WE)
add_dependencies(arm_motion_action_generate_messages_lisp _arm_motion_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceResult.msg" NAME_WE)
add_dependencies(arm_motion_action_generate_messages_lisp _arm_motion_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceActionFeedback.msg" NAME_WE)
add_dependencies(arm_motion_action_generate_messages_lisp _arm_motion_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceGoal.msg" NAME_WE)
add_dependencies(arm_motion_action_generate_messages_lisp _arm_motion_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceAction.msg" NAME_WE)
add_dependencies(arm_motion_action_generate_messages_lisp _arm_motion_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceActionResult.msg" NAME_WE)
add_dependencies(arm_motion_action_generate_messages_lisp _arm_motion_action_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(arm_motion_action_genlisp)
add_dependencies(arm_motion_action_genlisp arm_motion_action_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS arm_motion_action_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(arm_motion_action
  "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceGoal.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arm_motion_action
)
_generate_msg_py(arm_motion_action
  "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arm_motion_action
)
_generate_msg_py(arm_motion_action
  "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceResult.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arm_motion_action
)
_generate_msg_py(arm_motion_action
  "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arm_motion_action
)
_generate_msg_py(arm_motion_action
  "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arm_motion_action
)
_generate_msg_py(arm_motion_action
  "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceAction.msg"
  "${MSG_I_FLAGS}"
  "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceActionFeedback.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceResult.msg;/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceActionGoal.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceFeedback.msg;/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceGoal.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceActionResult.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arm_motion_action
)
_generate_msg_py(arm_motion_action
  "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arm_motion_action
)

### Generating Services

### Generating Module File
_generate_module_py(arm_motion_action
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arm_motion_action
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(arm_motion_action_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(arm_motion_action_generate_messages arm_motion_action_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceActionGoal.msg" NAME_WE)
add_dependencies(arm_motion_action_generate_messages_py _arm_motion_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceFeedback.msg" NAME_WE)
add_dependencies(arm_motion_action_generate_messages_py _arm_motion_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceResult.msg" NAME_WE)
add_dependencies(arm_motion_action_generate_messages_py _arm_motion_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceActionFeedback.msg" NAME_WE)
add_dependencies(arm_motion_action_generate_messages_py _arm_motion_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceGoal.msg" NAME_WE)
add_dependencies(arm_motion_action_generate_messages_py _arm_motion_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceAction.msg" NAME_WE)
add_dependencies(arm_motion_action_generate_messages_py _arm_motion_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/toshiki/ros_ws/devel/share/arm_motion_action/msg/arm_interfaceActionResult.msg" NAME_WE)
add_dependencies(arm_motion_action_generate_messages_py _arm_motion_action_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(arm_motion_action_genpy)
add_dependencies(arm_motion_action_genpy arm_motion_action_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS arm_motion_action_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arm_motion_action)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arm_motion_action
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET roscpp_generate_messages_cpp)
  add_dependencies(arm_motion_action_generate_messages_cpp roscpp_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(arm_motion_action_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(arm_motion_action_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_generate_messages_cpp)
  add_dependencies(arm_motion_action_generate_messages_cpp actionlib_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(arm_motion_action_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arm_motion_action)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arm_motion_action
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET roscpp_generate_messages_lisp)
  add_dependencies(arm_motion_action_generate_messages_lisp roscpp_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(arm_motion_action_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(arm_motion_action_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_generate_messages_lisp)
  add_dependencies(arm_motion_action_generate_messages_lisp actionlib_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(arm_motion_action_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arm_motion_action)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arm_motion_action\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arm_motion_action
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET roscpp_generate_messages_py)
  add_dependencies(arm_motion_action_generate_messages_py roscpp_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(arm_motion_action_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(arm_motion_action_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET actionlib_generate_messages_py)
  add_dependencies(arm_motion_action_generate_messages_py actionlib_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(arm_motion_action_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
