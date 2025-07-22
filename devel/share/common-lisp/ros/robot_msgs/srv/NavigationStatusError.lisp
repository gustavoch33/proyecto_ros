; Auto-generated. Do not edit!


(cl:in-package robot_msgs-srv)


;//! \htmlinclude NavigationStatusError-request.msg.html

(cl:defclass <NavigationStatusError-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass NavigationStatusError-request (<NavigationStatusError-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavigationStatusError-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavigationStatusError-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-srv:<NavigationStatusError-request> is deprecated: use robot_msgs-srv:NavigationStatusError-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavigationStatusError-request>) ostream)
  "Serializes a message object of type '<NavigationStatusError-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavigationStatusError-request>) istream)
  "Deserializes a message object of type '<NavigationStatusError-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavigationStatusError-request>)))
  "Returns string type for a service object of type '<NavigationStatusError-request>"
  "robot_msgs/NavigationStatusErrorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavigationStatusError-request)))
  "Returns string type for a service object of type 'NavigationStatusError-request"
  "robot_msgs/NavigationStatusErrorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavigationStatusError-request>)))
  "Returns md5sum for a message object of type '<NavigationStatusError-request>"
  "24527b03fd34734a9d2189497fa0891a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavigationStatusError-request)))
  "Returns md5sum for a message object of type 'NavigationStatusError-request"
  "24527b03fd34734a9d2189497fa0891a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavigationStatusError-request>)))
  "Returns full string definition for message of type '<NavigationStatusError-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavigationStatusError-request)))
  "Returns full string definition for message of type 'NavigationStatusError-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavigationStatusError-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavigationStatusError-request>))
  "Converts a ROS message object to a list"
  (cl:list 'NavigationStatusError-request
))
;//! \htmlinclude NavigationStatusError-response.msg.html

(cl:defclass <NavigationStatusError-response> (roslisp-msg-protocol:ros-message)
  ((error
    :reader error
    :initarg :error
    :type cl:string
    :initform "")
   (error_message
    :reader error_message
    :initarg :error_message
    :type cl:string
    :initform ""))
)

(cl:defclass NavigationStatusError-response (<NavigationStatusError-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavigationStatusError-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavigationStatusError-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-srv:<NavigationStatusError-response> is deprecated: use robot_msgs-srv:NavigationStatusError-response instead.")))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <NavigationStatusError-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:error-val is deprecated.  Use robot_msgs-srv:error instead.")
  (error m))

(cl:ensure-generic-function 'error_message-val :lambda-list '(m))
(cl:defmethod error_message-val ((m <NavigationStatusError-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:error_message-val is deprecated.  Use robot_msgs-srv:error_message instead.")
  (error_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavigationStatusError-response>) ostream)
  "Serializes a message object of type '<NavigationStatusError-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavigationStatusError-response>) istream)
  "Deserializes a message object of type '<NavigationStatusError-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavigationStatusError-response>)))
  "Returns string type for a service object of type '<NavigationStatusError-response>"
  "robot_msgs/NavigationStatusErrorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavigationStatusError-response)))
  "Returns string type for a service object of type 'NavigationStatusError-response"
  "robot_msgs/NavigationStatusErrorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavigationStatusError-response>)))
  "Returns md5sum for a message object of type '<NavigationStatusError-response>"
  "24527b03fd34734a9d2189497fa0891a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavigationStatusError-response)))
  "Returns md5sum for a message object of type 'NavigationStatusError-response"
  "24527b03fd34734a9d2189497fa0891a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavigationStatusError-response>)))
  "Returns full string definition for message of type '<NavigationStatusError-response>"
  (cl:format cl:nil "string error~%string error_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavigationStatusError-response)))
  "Returns full string definition for message of type 'NavigationStatusError-response"
  (cl:format cl:nil "string error~%string error_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavigationStatusError-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'error))
     4 (cl:length (cl:slot-value msg 'error_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavigationStatusError-response>))
  "Converts a ROS message object to a list"
  (cl:list 'NavigationStatusError-response
    (cl:cons ':error (error msg))
    (cl:cons ':error_message (error_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'NavigationStatusError)))
  'NavigationStatusError-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'NavigationStatusError)))
  'NavigationStatusError-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavigationStatusError)))
  "Returns string type for a service object of type '<NavigationStatusError>"
  "robot_msgs/NavigationStatusError")