; Auto-generated. Do not edit!


(cl:in-package arm_motion_action-msg)


;//! \htmlinclude arm_interfaceAction.msg.html

(cl:defclass <arm_interfaceAction> (roslisp-msg-protocol:ros-message)
  ((action_goal
    :reader action_goal
    :initarg :action_goal
    :type arm_motion_action-msg:arm_interfaceActionGoal
    :initform (cl:make-instance 'arm_motion_action-msg:arm_interfaceActionGoal))
   (action_result
    :reader action_result
    :initarg :action_result
    :type arm_motion_action-msg:arm_interfaceActionResult
    :initform (cl:make-instance 'arm_motion_action-msg:arm_interfaceActionResult))
   (action_feedback
    :reader action_feedback
    :initarg :action_feedback
    :type arm_motion_action-msg:arm_interfaceActionFeedback
    :initform (cl:make-instance 'arm_motion_action-msg:arm_interfaceActionFeedback)))
)

(cl:defclass arm_interfaceAction (<arm_interfaceAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <arm_interfaceAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'arm_interfaceAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_motion_action-msg:<arm_interfaceAction> is deprecated: use arm_motion_action-msg:arm_interfaceAction instead.")))

(cl:ensure-generic-function 'action_goal-val :lambda-list '(m))
(cl:defmethod action_goal-val ((m <arm_interfaceAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_motion_action-msg:action_goal-val is deprecated.  Use arm_motion_action-msg:action_goal instead.")
  (action_goal m))

(cl:ensure-generic-function 'action_result-val :lambda-list '(m))
(cl:defmethod action_result-val ((m <arm_interfaceAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_motion_action-msg:action_result-val is deprecated.  Use arm_motion_action-msg:action_result instead.")
  (action_result m))

(cl:ensure-generic-function 'action_feedback-val :lambda-list '(m))
(cl:defmethod action_feedback-val ((m <arm_interfaceAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_motion_action-msg:action_feedback-val is deprecated.  Use arm_motion_action-msg:action_feedback instead.")
  (action_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <arm_interfaceAction>) ostream)
  "Serializes a message object of type '<arm_interfaceAction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <arm_interfaceAction>) istream)
  "Deserializes a message object of type '<arm_interfaceAction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<arm_interfaceAction>)))
  "Returns string type for a message object of type '<arm_interfaceAction>"
  "arm_motion_action/arm_interfaceAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'arm_interfaceAction)))
  "Returns string type for a message object of type 'arm_interfaceAction"
  "arm_motion_action/arm_interfaceAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<arm_interfaceAction>)))
  "Returns md5sum for a message object of type '<arm_interfaceAction>"
  "27485c91172002f41ce048b3f0b997ae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'arm_interfaceAction)))
  "Returns md5sum for a message object of type 'arm_interfaceAction"
  "27485c91172002f41ce048b3f0b997ae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<arm_interfaceAction>)))
  "Returns full string definition for message of type '<arm_interfaceAction>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%arm_interfaceActionGoal action_goal~%arm_interfaceActionResult action_result~%arm_interfaceActionFeedback action_feedback~%~%================================================================================~%MSG: arm_motion_action/arm_interfaceActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%arm_interfaceGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: arm_motion_action/arm_interfaceGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#cartesian-move action interface~%#minimally, it may contain just a command code~%#more generally, it may contain desired tool-frame pose, as well~%# as gripper pose (gripper opening, or vacuum gripper on/off)~%# and an arrival time for the move~%# It is assumed that a move starts from the previous commanded pose, or from the current joint state~%~%#return codes provide status info, e.g. if a proposed move is reachable~%~%#define message constants:  ~%uint8 ARM_TEST_MODE = 0~%~%#queries~%uint8 ARM_IS_SERVER_BUSY_QUERY = 1~%uint8 ARM_QUERY_IS_PATH_VALID = 2~%uint8 GET_TOOL_POSE = 5~%uint8 GET_Q_DATA = 7~%~%#requests for motion plans; ~%uint8 PLAN_JSPACE_TRAJ_CURRENT_TO_WAITING_POSE=20~%uint8 PLAN_JSPACE_TRAJ_CURRENT_TO_QGOAL = 21~%uint8 PLAN_JSPACE_TRAJ_CURRENT_TO_CART_TOOL_POSE = 22 #plan a joint-space path from current arm pose to some IK soln of Cartesian goal~%~%uint8 PLAN_CARTESIAN_TRAJ_CURRENT_TO_DES_TOOL_POSE = 23~%uint8 PLAN_CARTESIAN_TRAJ_QSTART_TO_DES_TOOL_POSE = 24~%uint8 PLAN_CARTESIAN_TRAJ_QPREV_TO_DES_TOOL_POSE = 25~%~%uint8 CLEAR_MULTI_TRAJ_PLAN = 26~%uint8 APPEND_MULTI_TRAJ_CART_SEGMENT = 27~%uint8 APPEND_MULTI_TRAJ_JSPACE_SEGMENT = 28~%~%~%uint8 REFINE_PLANNED_TRAJECTORY = 41 #if used approx IK soln, use this option to refine solns~%~%# request to preview plan:~%#uint8 DISPLAY_TRAJECTORY = 50~%~%#MOVE command!~%uint8 EXECUTE_PLANNED_TRAJ = 100~%#specify a segment number to be executed from a multi-segment trajectory~%uint8 EXECUTE_TRAJ_NSEG = 101~%~%#uint8 ARM_DESCEND_20CM=101~%#uint8 ARM_DEPART_20CM=102~%~%~%#goal:~%int32 command_code~%geometry_msgs/PoseStamped des_pose_gripper~%float64[] arm_dp #to command a 3-D vector displacement relative to current pose, fixed orientation~%float64[] q_goal~%float64[] q_start~%int32 nsteps~%float64 arrival_time~%int32 nseg #to choose one of NSEG segments in a multi-traj vector~%#float64 time_scale_stretch_factor~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: arm_motion_action/arm_interfaceActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%arm_interfaceResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: arm_motion_action/arm_interfaceResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%#  response codes...~%uint8 SUCCESS=0~%~%uint8 ARM_RECEIVED_AND_INITIATED_RQST=1~%uint8 ARM_REQUEST_REJECTED_ALREADY_BUSY=2~%uint8 ARM_SERVER_NOT_BUSY=3~%uint8 ARM_SERVER_IS_BUSY=4~%uint8 ARM_RECEIVED_AND_COMPLETED_RQST=5~%uint8 PATH_IS_VALID=6~%uint8 PATH_NOT_VALID=7~%~%uint8 COMMAND_CODE_NOT_RECOGNIZED=8~%uint8 ARM_STATUS_UNDEFINED=9~%uint8 NOT_FINISHED_BEFORE_TIMEOUT=10~%~%~%int32 return_code~%int32 err_code~%string err_msg~%float64 computed_arrival_time~%float64[] q_arm~%geometry_msgs/PoseStamped current_pose_gripper~%~%================================================================================~%MSG: arm_motion_action/arm_interfaceActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%arm_interfaceFeedback feedback~%~%================================================================================~%MSG: arm_motion_action/arm_interfaceFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback: optional; ~%int32 fdbk~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'arm_interfaceAction)))
  "Returns full string definition for message of type 'arm_interfaceAction"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%arm_interfaceActionGoal action_goal~%arm_interfaceActionResult action_result~%arm_interfaceActionFeedback action_feedback~%~%================================================================================~%MSG: arm_motion_action/arm_interfaceActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%arm_interfaceGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: arm_motion_action/arm_interfaceGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#cartesian-move action interface~%#minimally, it may contain just a command code~%#more generally, it may contain desired tool-frame pose, as well~%# as gripper pose (gripper opening, or vacuum gripper on/off)~%# and an arrival time for the move~%# It is assumed that a move starts from the previous commanded pose, or from the current joint state~%~%#return codes provide status info, e.g. if a proposed move is reachable~%~%#define message constants:  ~%uint8 ARM_TEST_MODE = 0~%~%#queries~%uint8 ARM_IS_SERVER_BUSY_QUERY = 1~%uint8 ARM_QUERY_IS_PATH_VALID = 2~%uint8 GET_TOOL_POSE = 5~%uint8 GET_Q_DATA = 7~%~%#requests for motion plans; ~%uint8 PLAN_JSPACE_TRAJ_CURRENT_TO_WAITING_POSE=20~%uint8 PLAN_JSPACE_TRAJ_CURRENT_TO_QGOAL = 21~%uint8 PLAN_JSPACE_TRAJ_CURRENT_TO_CART_TOOL_POSE = 22 #plan a joint-space path from current arm pose to some IK soln of Cartesian goal~%~%uint8 PLAN_CARTESIAN_TRAJ_CURRENT_TO_DES_TOOL_POSE = 23~%uint8 PLAN_CARTESIAN_TRAJ_QSTART_TO_DES_TOOL_POSE = 24~%uint8 PLAN_CARTESIAN_TRAJ_QPREV_TO_DES_TOOL_POSE = 25~%~%uint8 CLEAR_MULTI_TRAJ_PLAN = 26~%uint8 APPEND_MULTI_TRAJ_CART_SEGMENT = 27~%uint8 APPEND_MULTI_TRAJ_JSPACE_SEGMENT = 28~%~%~%uint8 REFINE_PLANNED_TRAJECTORY = 41 #if used approx IK soln, use this option to refine solns~%~%# request to preview plan:~%#uint8 DISPLAY_TRAJECTORY = 50~%~%#MOVE command!~%uint8 EXECUTE_PLANNED_TRAJ = 100~%#specify a segment number to be executed from a multi-segment trajectory~%uint8 EXECUTE_TRAJ_NSEG = 101~%~%#uint8 ARM_DESCEND_20CM=101~%#uint8 ARM_DEPART_20CM=102~%~%~%#goal:~%int32 command_code~%geometry_msgs/PoseStamped des_pose_gripper~%float64[] arm_dp #to command a 3-D vector displacement relative to current pose, fixed orientation~%float64[] q_goal~%float64[] q_start~%int32 nsteps~%float64 arrival_time~%int32 nseg #to choose one of NSEG segments in a multi-traj vector~%#float64 time_scale_stretch_factor~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: arm_motion_action/arm_interfaceActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%arm_interfaceResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: arm_motion_action/arm_interfaceResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%#  response codes...~%uint8 SUCCESS=0~%~%uint8 ARM_RECEIVED_AND_INITIATED_RQST=1~%uint8 ARM_REQUEST_REJECTED_ALREADY_BUSY=2~%uint8 ARM_SERVER_NOT_BUSY=3~%uint8 ARM_SERVER_IS_BUSY=4~%uint8 ARM_RECEIVED_AND_COMPLETED_RQST=5~%uint8 PATH_IS_VALID=6~%uint8 PATH_NOT_VALID=7~%~%uint8 COMMAND_CODE_NOT_RECOGNIZED=8~%uint8 ARM_STATUS_UNDEFINED=9~%uint8 NOT_FINISHED_BEFORE_TIMEOUT=10~%~%~%int32 return_code~%int32 err_code~%string err_msg~%float64 computed_arrival_time~%float64[] q_arm~%geometry_msgs/PoseStamped current_pose_gripper~%~%================================================================================~%MSG: arm_motion_action/arm_interfaceActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%arm_interfaceFeedback feedback~%~%================================================================================~%MSG: arm_motion_action/arm_interfaceFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback: optional; ~%int32 fdbk~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <arm_interfaceAction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <arm_interfaceAction>))
  "Converts a ROS message object to a list"
  (cl:list 'arm_interfaceAction
    (cl:cons ':action_goal (action_goal msg))
    (cl:cons ':action_result (action_result msg))
    (cl:cons ':action_feedback (action_feedback msg))
))
