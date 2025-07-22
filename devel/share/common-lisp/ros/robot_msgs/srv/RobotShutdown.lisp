; Auto-generated. Do not edit!


(cl:in-package robot_msgs-srv)


;//! \htmlinclude RobotShutdown-request.msg.html

(cl:defclass <RobotShutdown-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RobotShutdown-request (<RobotShutdown-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotShutdown-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotShutdown-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-srv:<RobotShutdown-request> is deprecated: use robot_msgs-srv:RobotShutdown-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotShutdown-request>) ostream)
  "Serializes a message object of type '<RobotShutdown-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotShutdown-request>) istream)
  "Deserializes a message object of type '<RobotShutdown-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotShutdown-request>)))
  "Returns string type for a service object of type '<RobotShutdown-request>"
  "robot_msgs/RobotShutdownRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotShutdown-request)))
  "Returns string type for a service object of type 'RobotShutdown-request"
  "robot_msgs/RobotShutdownRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotShutdown-request>)))
  "Returns md5sum for a message object of type '<RobotShutdown-request>"
  "6bccbb1e6ccd1459ac90cc79251ac541")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotShutdown-request)))
  "Returns md5sum for a message object of type 'RobotShutdown-request"
  "6bccbb1e6ccd1459ac90cc79251ac541")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotShutdown-request>)))
  "Returns full string definition for message of type '<RobotShutdown-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotShutdown-request)))
  "Returns full string definition for message of type 'RobotShutdown-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotShutdown-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotShutdown-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotShutdown-request
))
;//! \htmlinclude RobotShutdown-response.msg.html

(cl:defclass <RobotShutdown-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (description
    :reader description
    :initarg :description
    :type cl:string
    :initform ""))
)

(cl:defclass RobotShutdown-response (<RobotShutdown-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotShutdown-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotShutdown-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-srv:<RobotShutdown-response> is deprecated: use robot_msgs-srv:RobotShutdown-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <RobotShutdown-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:success-val is deprecated.  Use robot_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <RobotShutdown-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:description-val is deprecated.  Use robot_msgs-srv:description instead.")
  (description m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotShutdown-response>) ostream)
  "Serializes a message object of type '<RobotShutdown-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'description))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotShutdown-response>) istream)
  "Deserializes a message object of type '<RobotShutdown-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotShutdown-response>)))
  "Returns string type for a service object of type '<RobotShutdown-response>"
  "robot_msgs/RobotShutdownResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotShutdown-response)))
  "Returns string type for a service object of type 'RobotShutdown-response"
  "robot_msgs/RobotShutdownResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotShutdown-response>)))
  "Returns md5sum for a message object of type '<RobotShutdown-response>"
  "6bccbb1e6ccd1459ac90cc79251ac541")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotShutdown-response)))
  "Returns md5sum for a message object of type 'RobotShutdown-response"
  "6bccbb1e6ccd1459ac90cc79251ac541")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotShutdown-response>)))
  "Returns full string definition for message of type '<RobotShutdown-response>"
  (cl:format cl:nil "bool success~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotShutdown-response)))
  "Returns full string definition for message of type 'RobotShutdown-response"
  (cl:format cl:nil "bool success~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotShutdown-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'description))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotShutdown-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotShutdown-response
    (cl:cons ':success (success msg))
    (cl:cons ':description (description msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RobotShutdown)))
  'RobotShutdown-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RobotShutdown)))
  'RobotShutdown-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotShutdown)))
  "Returns string type for a service object of type '<RobotShutdown>"
  "robot_msgs/RobotShutdown")