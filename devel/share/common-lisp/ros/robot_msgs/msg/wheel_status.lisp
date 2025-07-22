; Auto-generated. Do not edit!


(cl:in-package robot_msgs-msg)


;//! \htmlinclude wheel_status.msg.html

(cl:defclass <wheel_status> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:string
    :initform "")
   (voltage
    :reader voltage
    :initarg :voltage
    :type cl:float
    :initform 0.0))
)

(cl:defclass wheel_status (<wheel_status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <wheel_status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'wheel_status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-msg:<wheel_status> is deprecated: use robot_msgs-msg:wheel_status instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <wheel_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:status-val is deprecated.  Use robot_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'voltage-val :lambda-list '(m))
(cl:defmethod voltage-val ((m <wheel_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:voltage-val is deprecated.  Use robot_msgs-msg:voltage instead.")
  (voltage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <wheel_status>) ostream)
  "Serializes a message object of type '<wheel_status>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <wheel_status>) istream)
  "Deserializes a message object of type '<wheel_status>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'voltage) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<wheel_status>)))
  "Returns string type for a message object of type '<wheel_status>"
  "robot_msgs/wheel_status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'wheel_status)))
  "Returns string type for a message object of type 'wheel_status"
  "robot_msgs/wheel_status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<wheel_status>)))
  "Returns md5sum for a message object of type '<wheel_status>"
  "272799e5d37bf8b3a6a4dfa0bceaf521")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'wheel_status)))
  "Returns md5sum for a message object of type 'wheel_status"
  "272799e5d37bf8b3a6a4dfa0bceaf521")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<wheel_status>)))
  "Returns full string definition for message of type '<wheel_status>"
  (cl:format cl:nil "string status~%float32 voltage~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'wheel_status)))
  "Returns full string definition for message of type 'wheel_status"
  (cl:format cl:nil "string status~%float32 voltage~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <wheel_status>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'status))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <wheel_status>))
  "Converts a ROS message object to a list"
  (cl:list 'wheel_status
    (cl:cons ':status (status msg))
    (cl:cons ':voltage (voltage msg))
))
