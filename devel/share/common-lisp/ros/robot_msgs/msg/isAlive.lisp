; Auto-generated. Do not edit!


(cl:in-package robot_msgs-msg)


;//! \htmlinclude isAlive.msg.html

(cl:defclass <isAlive> (roslisp-msg-protocol:ros-message)
  ((is_alive
    :reader is_alive
    :initarg :is_alive
    :type cl:boolean
    :initform cl:nil)
   (error
    :reader error
    :initarg :error
    :type cl:string
    :initform ""))
)

(cl:defclass isAlive (<isAlive>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <isAlive>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'isAlive)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-msg:<isAlive> is deprecated: use robot_msgs-msg:isAlive instead.")))

(cl:ensure-generic-function 'is_alive-val :lambda-list '(m))
(cl:defmethod is_alive-val ((m <isAlive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:is_alive-val is deprecated.  Use robot_msgs-msg:is_alive instead.")
  (is_alive m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <isAlive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:error-val is deprecated.  Use robot_msgs-msg:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <isAlive>) ostream)
  "Serializes a message object of type '<isAlive>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_alive) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <isAlive>) istream)
  "Deserializes a message object of type '<isAlive>"
    (cl:setf (cl:slot-value msg 'is_alive) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<isAlive>)))
  "Returns string type for a message object of type '<isAlive>"
  "robot_msgs/isAlive")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'isAlive)))
  "Returns string type for a message object of type 'isAlive"
  "robot_msgs/isAlive")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<isAlive>)))
  "Returns md5sum for a message object of type '<isAlive>"
  "60775c3db7f51fcb9474847c3de8c5da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'isAlive)))
  "Returns md5sum for a message object of type 'isAlive"
  "60775c3db7f51fcb9474847c3de8c5da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<isAlive>)))
  "Returns full string definition for message of type '<isAlive>"
  (cl:format cl:nil "bool is_alive~%string error~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'isAlive)))
  "Returns full string definition for message of type 'isAlive"
  (cl:format cl:nil "bool is_alive~%string error~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <isAlive>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'error))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <isAlive>))
  "Converts a ROS message object to a list"
  (cl:list 'isAlive
    (cl:cons ':is_alive (is_alive msg))
    (cl:cons ':error (error msg))
))
