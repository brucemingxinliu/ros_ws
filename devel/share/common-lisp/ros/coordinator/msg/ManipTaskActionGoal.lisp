; Auto-generated. Do not edit!


(cl:in-package coordinator-msg)


;//! \htmlinclude ManipTaskActionGoal.msg.html

(cl:defclass <ManipTaskActionGoal> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (goal_id
    :reader goal_id
    :initarg :goal_id
    :type actionlib_msgs-msg:GoalID
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalID))
   (goal
    :reader goal
    :initarg :goal
    :type coordinator-msg:ManipTaskGoal
    :initform (cl:make-instance 'coordinator-msg:ManipTaskGoal)))
)

(cl:defclass ManipTaskActionGoal (<ManipTaskActionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManipTaskActionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManipTaskActionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name coordinator-msg:<ManipTaskActionGoal> is deprecated: use coordinator-msg:ManipTaskActionGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ManipTaskActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader coordinator-msg:header-val is deprecated.  Use coordinator-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <ManipTaskActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader coordinator-msg:goal_id-val is deprecated.  Use coordinator-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <ManipTaskActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader coordinator-msg:goal-val is deprecated.  Use coordinator-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManipTaskActionGoal>) ostream)
  "Serializes a message object of type '<ManipTaskActionGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManipTaskActionGoal>) istream)
  "Deserializes a message object of type '<ManipTaskActionGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManipTaskActionGoal>)))
  "Returns string type for a message object of type '<ManipTaskActionGoal>"
  "coordinator/ManipTaskActionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManipTaskActionGoal)))
  "Returns string type for a message object of type 'ManipTaskActionGoal"
  "coordinator/ManipTaskActionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManipTaskActionGoal>)))
  "Returns md5sum for a message object of type '<ManipTaskActionGoal>"
  "557039408527c4e70fb5d2f174d73b75")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManipTaskActionGoal)))
  "Returns md5sum for a message object of type 'ManipTaskActionGoal"
  "557039408527c4e70fb5d2f174d73b75")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManipTaskActionGoal>)))
  "Returns full string definition for message of type '<ManipTaskActionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%ManipTaskGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: coordinator/ManipTaskGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal: specify object code, perception type (incl blind), dropoff location, optional pickup location~%#task codes:~%int32 PCL_VISION = 1 # could have more camera sources to refer to~%int32 BLIND_MANIP = 2 #expect pose specified in pickup_location field~%~%#action codes:~%int32 GET_PICKUP_POSE = 1 #low level ops; maybe don't implement~%int32 WAIT_FOR_FINDER = 101~%~%int32 FIND_TABLE_SURFACE = 2 #do this once, and re-use result for multiple objects~%int32 WAIT_FIND_TABLE_SURFACE = 102~%~%int32 GRAB_OBJECT = 3 #assumes use of current pickup pose,~%                      #whether provided for \"blind\" manip, or found~%                      #from use of PCL_VISION~%int32 WAIT_FOR_GRAB_OBJECT = 103    ~%                 ~%int32 DROPOFF_OBJECT = 4 #must provide dropoff_frame in goal msg~%int32 WAIT_FOR_DROPOFF_OBJECT = 104~%~%#int32 MANIP_OBJECT = 5 #macro: does perception, grab, and dropoff~%                       #MUST provide dropoff frame, and means to~%                       #get pickup_frame~%~%int32 STRADDLE_OBJECT = 8 #test mode--simply straddle object, but don't grasp it~%int32 WAIT_FOR_STRADDLE_OBJECT = 108~%~%int32 CART_MOVE_TO_GRIPPER_POSE = 9~%int32 WAIT_FOR_CART_MOVE = 109~%                       ~%int32 NO_CURRENT_TASK = 6~%int32 MOVE_TO_PRE_POSE = 7~%int32 WAIT_FOR_MOVE_TO_PREPOSE = 107~%int32 WAIT_FOR_MOVE = 107 #generic wait-for-move status~%~%int32 ABORT= 666~%~%#goal specification:~%int32 action_code #what action should be performed?~%int32 object_code #refer to a-priori known object types by object-ID codes~%geometry_msgs/PoseStamped pickup_frame #specify object coords for pickup ~%geometry_msgs/PoseStamped dropoff_frame #specify desired drop-off coords of object's frame~%geometry_msgs/PoseStamped gripper_goal_frame #a goal frame to move gripper~%int32 perception_source  #e.g. name a camera source~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManipTaskActionGoal)))
  "Returns full string definition for message of type 'ManipTaskActionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%ManipTaskGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: coordinator/ManipTaskGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal: specify object code, perception type (incl blind), dropoff location, optional pickup location~%#task codes:~%int32 PCL_VISION = 1 # could have more camera sources to refer to~%int32 BLIND_MANIP = 2 #expect pose specified in pickup_location field~%~%#action codes:~%int32 GET_PICKUP_POSE = 1 #low level ops; maybe don't implement~%int32 WAIT_FOR_FINDER = 101~%~%int32 FIND_TABLE_SURFACE = 2 #do this once, and re-use result for multiple objects~%int32 WAIT_FIND_TABLE_SURFACE = 102~%~%int32 GRAB_OBJECT = 3 #assumes use of current pickup pose,~%                      #whether provided for \"blind\" manip, or found~%                      #from use of PCL_VISION~%int32 WAIT_FOR_GRAB_OBJECT = 103    ~%                 ~%int32 DROPOFF_OBJECT = 4 #must provide dropoff_frame in goal msg~%int32 WAIT_FOR_DROPOFF_OBJECT = 104~%~%#int32 MANIP_OBJECT = 5 #macro: does perception, grab, and dropoff~%                       #MUST provide dropoff frame, and means to~%                       #get pickup_frame~%~%int32 STRADDLE_OBJECT = 8 #test mode--simply straddle object, but don't grasp it~%int32 WAIT_FOR_STRADDLE_OBJECT = 108~%~%int32 CART_MOVE_TO_GRIPPER_POSE = 9~%int32 WAIT_FOR_CART_MOVE = 109~%                       ~%int32 NO_CURRENT_TASK = 6~%int32 MOVE_TO_PRE_POSE = 7~%int32 WAIT_FOR_MOVE_TO_PREPOSE = 107~%int32 WAIT_FOR_MOVE = 107 #generic wait-for-move status~%~%int32 ABORT= 666~%~%#goal specification:~%int32 action_code #what action should be performed?~%int32 object_code #refer to a-priori known object types by object-ID codes~%geometry_msgs/PoseStamped pickup_frame #specify object coords for pickup ~%geometry_msgs/PoseStamped dropoff_frame #specify desired drop-off coords of object's frame~%geometry_msgs/PoseStamped gripper_goal_frame #a goal frame to move gripper~%int32 perception_source  #e.g. name a camera source~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManipTaskActionGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManipTaskActionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'ManipTaskActionGoal
    (cl:cons ':header (header msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':goal (goal msg))
))
