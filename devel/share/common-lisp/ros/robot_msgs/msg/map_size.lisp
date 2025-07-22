; Auto-generated. Do not edit!


(cl:in-package robot_msgs-msg)


;//! \htmlinclude map_size.msg.html

(cl:defclass <map_size> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (size
    :reader size
    :initarg :size
    :type cl:integer
    :initform 0))
)

(cl:defclass map_size (<map_size>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <map_size>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'map_size)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-msg:<map_size> is deprecated: use robot_msgs-msg:map_size instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <map_size>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:id-val is deprecated.  Use robot_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <map_size>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:size-val is deprecated.  Use robot_msgs-msg:size instead.")
  (size m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <map_size>) ostream)
  "Serializes a message object of type '<map_size>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:let* ((signed (cl:slot-value msg 'size)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <map_size>) istream)
  "Deserializes a message object of type '<map_size>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'size) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<map_size>)))
  "Returns string type for a message object of type '<map_size>"
  "robot_msgs/map_size")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'map_size)))
  "Returns string type for a message object of type 'map_size"
  "robot_msgs/map_size")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<map_size>)))
  "Returns md5sum for a message object of type '<map_size>"
  "ff688be933a0f08df7fa3860e57820bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'map_size)))
  "Returns md5sum for a message object of type 'map_size"
  "ff688be933a0f08df7fa3860e57820bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<map_size>)))
  "Returns full string definition for message of type '<map_size>"
  (cl:format cl:nil "string id~%int32 size~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'map_size)))
  "Returns full string definition for message of type 'map_size"
  (cl:format cl:nil "string id~%int32 size~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <map_size>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <map_size>))
  "Converts a ROS message object to a list"
  (cl:list 'map_size
    (cl:cons ':id (id msg))
    (cl:cons ':size (size msg))
))
