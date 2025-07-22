; Auto-generated. Do not edit!


(cl:in-package robot_msgs-srv)


;//! \htmlinclude WheelError-request.msg.html

(cl:defclass <WheelError-request> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:string
    :initform ""))
)

(cl:defclass WheelError-request (<WheelError-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelError-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelError-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-srv:<WheelError-request> is deprecated: use robot_msgs-srv:WheelError-request instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <WheelError-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:status-val is deprecated.  Use robot_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelError-request>) ostream)
  "Serializes a message object of type '<WheelError-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelError-request>) istream)
  "Deserializes a message object of type '<WheelError-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelError-request>)))
  "Returns string type for a service object of type '<WheelError-request>"
  "robot_msgs/WheelErrorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelError-request)))
  "Returns string type for a service object of type 'WheelError-request"
  "robot_msgs/WheelErrorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelError-request>)))
  "Returns md5sum for a message object of type '<WheelError-request>"
  "1418f8f10b8efb185319b60d99ac214a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelError-request)))
  "Returns md5sum for a message object of type 'WheelError-request"
  "1418f8f10b8efb185319b60d99ac214a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelError-request>)))
  "Returns full string definition for message of type '<WheelError-request>"
  (cl:format cl:nil "string status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelError-request)))
  "Returns full string definition for message of type 'WheelError-request"
  (cl:format cl:nil "string status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelError-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelError-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelError-request
    (cl:cons ':status (status msg))
))
;//! \htmlinclude WheelError-response.msg.html

(cl:defclass <WheelError-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass WheelError-response (<WheelError-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelError-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelError-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-srv:<WheelError-response> is deprecated: use robot_msgs-srv:WheelError-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <WheelError-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:success-val is deprecated.  Use robot_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelError-response>) ostream)
  "Serializes a message object of type '<WheelError-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelError-response>) istream)
  "Deserializes a message object of type '<WheelError-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelError-response>)))
  "Returns string type for a service object of type '<WheelError-response>"
  "robot_msgs/WheelErrorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelError-response)))
  "Returns string type for a service object of type 'WheelError-response"
  "robot_msgs/WheelErrorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelError-response>)))
  "Returns md5sum for a message object of type '<WheelError-response>"
  "1418f8f10b8efb185319b60d99ac214a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelError-response)))
  "Returns md5sum for a message object of type 'WheelError-response"
  "1418f8f10b8efb185319b60d99ac214a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelError-response>)))
  "Returns full string definition for message of type '<WheelError-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelError-response)))
  "Returns full string definition for message of type 'WheelError-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelError-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelError-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelError-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WheelError)))
  'WheelError-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WheelError)))
  'WheelError-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelError)))
  "Returns string type for a service object of type '<WheelError>"
  "robot_msgs/WheelError")