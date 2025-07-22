; Auto-generated. Do not edit!


(cl:in-package robot_msgs-srv)


;//! \htmlinclude SetGain-request.msg.html

(cl:defclass <SetGain-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass SetGain-request (<SetGain-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGain-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGain-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-srv:<SetGain-request> is deprecated: use robot_msgs-srv:SetGain-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <SetGain-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:name-val is deprecated.  Use robot_msgs-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SetGain-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:value-val is deprecated.  Use robot_msgs-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGain-request>) ostream)
  "Serializes a message object of type '<SetGain-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGain-request>) istream)
  "Deserializes a message object of type '<SetGain-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGain-request>)))
  "Returns string type for a service object of type '<SetGain-request>"
  "robot_msgs/SetGainRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGain-request)))
  "Returns string type for a service object of type 'SetGain-request"
  "robot_msgs/SetGainRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGain-request>)))
  "Returns md5sum for a message object of type '<SetGain-request>"
  "a2f750cf2ccda6f044ac76934a961ff0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGain-request)))
  "Returns md5sum for a message object of type 'SetGain-request"
  "a2f750cf2ccda6f044ac76934a961ff0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGain-request>)))
  "Returns full string definition for message of type '<SetGain-request>"
  (cl:format cl:nil "string  name~%int32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGain-request)))
  "Returns full string definition for message of type 'SetGain-request"
  (cl:format cl:nil "string  name~%int32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGain-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGain-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGain-request
    (cl:cons ':name (name msg))
    (cl:cons ':value (value msg))
))
;//! \htmlinclude SetGain-response.msg.html

(cl:defclass <SetGain-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetGain-response (<SetGain-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGain-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGain-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-srv:<SetGain-response> is deprecated: use robot_msgs-srv:SetGain-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SetGain-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:status-val is deprecated.  Use robot_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGain-response>) ostream)
  "Serializes a message object of type '<SetGain-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGain-response>) istream)
  "Deserializes a message object of type '<SetGain-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGain-response>)))
  "Returns string type for a service object of type '<SetGain-response>"
  "robot_msgs/SetGainResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGain-response)))
  "Returns string type for a service object of type 'SetGain-response"
  "robot_msgs/SetGainResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGain-response>)))
  "Returns md5sum for a message object of type '<SetGain-response>"
  "a2f750cf2ccda6f044ac76934a961ff0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGain-response)))
  "Returns md5sum for a message object of type 'SetGain-response"
  "a2f750cf2ccda6f044ac76934a961ff0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGain-response>)))
  "Returns full string definition for message of type '<SetGain-response>"
  (cl:format cl:nil "bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGain-response)))
  "Returns full string definition for message of type 'SetGain-response"
  (cl:format cl:nil "bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGain-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGain-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGain-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetGain)))
  'SetGain-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetGain)))
  'SetGain-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGain)))
  "Returns string type for a service object of type '<SetGain>"
  "robot_msgs/SetGain")