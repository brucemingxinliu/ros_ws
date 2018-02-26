; Auto-generated. Do not edit!


(cl:in-package object_grabber-msg)


;//! \htmlinclude object_grabber3ActionResult.msg.html

(cl:defclass <object_grabber3ActionResult> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (status
    :reader status
    :initarg :status
    :type actionlib_msgs-msg:GoalStatus
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalStatus))
   (result
    :reader result
    :initarg :result
    :type object_grabber-msg:object_grabber3Result
    :initform (cl:make-instance 'object_grabber-msg:object_grabber3Result)))
)

(cl:defclass object_grabber3ActionResult (<object_grabber3ActionResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <object_grabber3ActionResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'object_grabber3ActionResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_grabber-msg:<object_grabber3ActionResult> is deprecated: use object_grabber-msg:object_grabber3ActionResult instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <object_grabber3ActionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_grabber-msg:header-val is deprecated.  Use object_grabber-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <object_grabber3ActionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_grabber-msg:status-val is deprecated.  Use object_grabber-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <object_grabber3ActionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_grabber-msg:result-val is deprecated.  Use object_grabber-msg:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <object_grabber3ActionResult>) ostream)
  "Serializes a message object of type '<object_grabber3ActionResult>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'result) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <object_grabber3ActionResult>) istream)
  "Deserializes a message object of type '<object_grabber3ActionResult>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'result) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<object_grabber3ActionResult>)))
  "Returns string type for a message object of type '<object_grabber3ActionResult>"
  "object_grabber/object_grabber3ActionResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'object_grabber3ActionResult)))
  "Returns string type for a message object of type 'object_grabber3ActionResult"
  "object_grabber/object_grabber3ActionResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<object_grabber3ActionResult>)))
  "Returns md5sum for a message object of type '<object_grabber3ActionResult>"
  "7601dfabb9ed9c7837af8d40f6a082ef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'object_grabber3ActionResult)))
  "Returns md5sum for a message object of type 'object_grabber3ActionResult"
  "7601dfabb9ed9c7837af8d40f6a082ef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<object_grabber3ActionResult>)))
  "Returns full string definition for message of type '<object_grabber3ActionResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%object_grabber3Result result~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: object_grabber/object_grabber3Result~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%#  response codes...~%int32 SUCCESS=0~%int32 OBJECT_ACQUIRED=0~%int32 FAILED_CANNOT_REACH=1~%int32 FAILED_CANNOT_APPROACH=2~%int32 FAILED_CANNOT_REACH_GRASP_POSE=3~%int32 FAILED_CANNOT_REACH_DEPART_POSE=4~%int32 FAILED_OBJECT_NOT_IN_GRIPPER=5~%int32 FAILED_OBJECT_UNKNOWN=6~%int32 OBJECT_GRABBER_BUSY=7~%int32 OBJECT_GRABBER_CANCELLED=8~%int32 FAILED_CANNOT_REACH_DESIRED_POSE=9~%int32 FAILED_CANNOT_MOVE_CARTESIAN_FINE=13~%int32 FAILED_CANNOT_MOVE_TO_PRE_POSE=14~%int32 ACTION_CODE_UNKNOWN=15~%int32 GRIPPER_IS_OPEN=16~%int32 GRIPPER_IS_CLOSED=17~%int32 GRIPPER_FAILURE=18~%int32 PENDING=19~%int32 OBJECT_DROPPED_OFF = 20~%int32 NO_KNOWN_GRASP_OPTIONS_THIS_GRIPPER_AND_OBJECT = 21~%~%int32 return_code~%#geometry_msgs/PoseStamped des_flange_pose_stamped_wrt_torso~%float64 computed_move_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'object_grabber3ActionResult)))
  "Returns full string definition for message of type 'object_grabber3ActionResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%object_grabber3Result result~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: object_grabber/object_grabber3Result~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%#  response codes...~%int32 SUCCESS=0~%int32 OBJECT_ACQUIRED=0~%int32 FAILED_CANNOT_REACH=1~%int32 FAILED_CANNOT_APPROACH=2~%int32 FAILED_CANNOT_REACH_GRASP_POSE=3~%int32 FAILED_CANNOT_REACH_DEPART_POSE=4~%int32 FAILED_OBJECT_NOT_IN_GRIPPER=5~%int32 FAILED_OBJECT_UNKNOWN=6~%int32 OBJECT_GRABBER_BUSY=7~%int32 OBJECT_GRABBER_CANCELLED=8~%int32 FAILED_CANNOT_REACH_DESIRED_POSE=9~%int32 FAILED_CANNOT_MOVE_CARTESIAN_FINE=13~%int32 FAILED_CANNOT_MOVE_TO_PRE_POSE=14~%int32 ACTION_CODE_UNKNOWN=15~%int32 GRIPPER_IS_OPEN=16~%int32 GRIPPER_IS_CLOSED=17~%int32 GRIPPER_FAILURE=18~%int32 PENDING=19~%int32 OBJECT_DROPPED_OFF = 20~%int32 NO_KNOWN_GRASP_OPTIONS_THIS_GRIPPER_AND_OBJECT = 21~%~%int32 return_code~%#geometry_msgs/PoseStamped des_flange_pose_stamped_wrt_torso~%float64 computed_move_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <object_grabber3ActionResult>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <object_grabber3ActionResult>))
  "Converts a ROS message object to a list"
  (cl:list 'object_grabber3ActionResult
    (cl:cons ':header (header msg))
    (cl:cons ':status (status msg))
    (cl:cons ':result (result msg))
))
