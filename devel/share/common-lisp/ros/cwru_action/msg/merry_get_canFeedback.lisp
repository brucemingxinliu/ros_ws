; Auto-generated. Do not edit!


(cl:in-package cwru_action-msg)


;//! \htmlinclude merry_get_canFeedback.msg.html

(cl:defclass <merry_get_canFeedback> (roslisp-msg-protocol:ros-message)
  ((fdbk
    :reader fdbk
    :initarg :fdbk
    :type cl:integer
    :initform 0))
)

(cl:defclass merry_get_canFeedback (<merry_get_canFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <merry_get_canFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'merry_get_canFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cwru_action-msg:<merry_get_canFeedback> is deprecated: use cwru_action-msg:merry_get_canFeedback instead.")))

(cl:ensure-generic-function 'fdbk-val :lambda-list '(m))
(cl:defmethod fdbk-val ((m <merry_get_canFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cwru_action-msg:fdbk-val is deprecated.  Use cwru_action-msg:fdbk instead.")
  (fdbk m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <merry_get_canFeedback>) ostream)
  "Serializes a message object of type '<merry_get_canFeedback>"
  (cl:let* ((signed (cl:slot-value msg 'fdbk)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <merry_get_canFeedback>) istream)
  "Deserializes a message object of type '<merry_get_canFeedback>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fdbk) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<merry_get_canFeedback>)))
  "Returns string type for a message object of type '<merry_get_canFeedback>"
  "cwru_action/merry_get_canFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'merry_get_canFeedback)))
  "Returns string type for a message object of type 'merry_get_canFeedback"
  "cwru_action/merry_get_canFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<merry_get_canFeedback>)))
  "Returns md5sum for a message object of type '<merry_get_canFeedback>"
  "46cc8f8da6ebf35aedc6bad2e96b2e59")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'merry_get_canFeedback)))
  "Returns md5sum for a message object of type 'merry_get_canFeedback"
  "46cc8f8da6ebf35aedc6bad2e96b2e59")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<merry_get_canFeedback>)))
  "Returns full string definition for message of type '<merry_get_canFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback: optional; ~%int32 fdbk~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'merry_get_canFeedback)))
  "Returns full string definition for message of type 'merry_get_canFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback: optional; ~%int32 fdbk~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <merry_get_canFeedback>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <merry_get_canFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'merry_get_canFeedback
    (cl:cons ':fdbk (fdbk msg))
))
