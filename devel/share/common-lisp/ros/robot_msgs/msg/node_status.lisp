; Auto-generated. Do not edit!


(cl:in-package robot_msgs-msg)


;//! \htmlinclude node_status.msg.html

(cl:defclass <node_status> (roslisp-msg-protocol:ros-message)
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

(cl:defclass node_status (<node_status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-msg:<node_status> is deprecated: use robot_msgs-msg:node_status instead.")))

(cl:ensure-generic-function 'is_alive-val :lambda-list '(m))
(cl:defmethod is_alive-val ((m <node_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:is_alive-val is deprecated.  Use robot_msgs-msg:is_alive instead.")
  (is_alive m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <node_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:error-val is deprecated.  Use robot_msgs-msg:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_status>) ostream)
  "Serializes a message object of type '<node_status>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_alive) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_status>) istream)
  "Deserializes a message object of type '<node_status>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_status>)))
  "Returns string type for a message object of type '<node_status>"
  "robot_msgs/node_status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_status)))
  "Returns string type for a message object of type 'node_status"
  "robot_msgs/node_status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_status>)))
  "Returns md5sum for a message object of type '<node_status>"
  "60775c3db7f51fcb9474847c3de8c5da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_status)))
  "Returns md5sum for a message object of type 'node_status"
  "60775c3db7f51fcb9474847c3de8c5da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_status>)))
  "Returns full string definition for message of type '<node_status>"
  (cl:format cl:nil "bool is_alive~%string error~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_status)))
  "Returns full string definition for message of type 'node_status"
  (cl:format cl:nil "bool is_alive~%string error~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_status>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'error))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_status>))
  "Converts a ROS message object to a list"
  (cl:list 'node_status
    (cl:cons ':is_alive (is_alive msg))
    (cl:cons ':error (error msg))
))
