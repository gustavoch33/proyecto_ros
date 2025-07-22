; Auto-generated. Do not edit!


(cl:in-package robot_msgs-srv)


;//! \htmlinclude GetGain-request.msg.html

(cl:defclass <GetGain-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetGain-request (<GetGain-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetGain-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetGain-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-srv:<GetGain-request> is deprecated: use robot_msgs-srv:GetGain-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetGain-request>) ostream)
  "Serializes a message object of type '<GetGain-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetGain-request>) istream)
  "Deserializes a message object of type '<GetGain-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetGain-request>)))
  "Returns string type for a service object of type '<GetGain-request>"
  "robot_msgs/GetGainRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGain-request)))
  "Returns string type for a service object of type 'GetGain-request"
  "robot_msgs/GetGainRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetGain-request>)))
  "Returns md5sum for a message object of type '<GetGain-request>"
  "179ec88417e4994e631c5b039671a399")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetGain-request)))
  "Returns md5sum for a message object of type 'GetGain-request"
  "179ec88417e4994e631c5b039671a399")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetGain-request>)))
  "Returns full string definition for message of type '<GetGain-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetGain-request)))
  "Returns full string definition for message of type 'GetGain-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetGain-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetGain-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetGain-request
))
;//! \htmlinclude GetGain-response.msg.html

(cl:defclass <GetGain-response> (roslisp-msg-protocol:ros-message)
  ((kp
    :reader kp
    :initarg :kp
    :type cl:integer
    :initform 0)
   (ki
    :reader ki
    :initarg :ki
    :type cl:integer
    :initform 0)
   (kd
    :reader kd
    :initarg :kd
    :type cl:integer
    :initform 0))
)

(cl:defclass GetGain-response (<GetGain-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetGain-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetGain-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-srv:<GetGain-response> is deprecated: use robot_msgs-srv:GetGain-response instead.")))

(cl:ensure-generic-function 'kp-val :lambda-list '(m))
(cl:defmethod kp-val ((m <GetGain-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:kp-val is deprecated.  Use robot_msgs-srv:kp instead.")
  (kp m))

(cl:ensure-generic-function 'ki-val :lambda-list '(m))
(cl:defmethod ki-val ((m <GetGain-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:ki-val is deprecated.  Use robot_msgs-srv:ki instead.")
  (ki m))

(cl:ensure-generic-function 'kd-val :lambda-list '(m))
(cl:defmethod kd-val ((m <GetGain-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:kd-val is deprecated.  Use robot_msgs-srv:kd instead.")
  (kd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetGain-response>) ostream)
  "Serializes a message object of type '<GetGain-response>"
  (cl:let* ((signed (cl:slot-value msg 'kp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ki)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'kd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetGain-response>) istream)
  "Deserializes a message object of type '<GetGain-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'kp) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ki) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'kd) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetGain-response>)))
  "Returns string type for a service object of type '<GetGain-response>"
  "robot_msgs/GetGainResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGain-response)))
  "Returns string type for a service object of type 'GetGain-response"
  "robot_msgs/GetGainResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetGain-response>)))
  "Returns md5sum for a message object of type '<GetGain-response>"
  "179ec88417e4994e631c5b039671a399")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetGain-response)))
  "Returns md5sum for a message object of type 'GetGain-response"
  "179ec88417e4994e631c5b039671a399")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetGain-response>)))
  "Returns full string definition for message of type '<GetGain-response>"
  (cl:format cl:nil "int32 kp~%int32 ki~%int32 kd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetGain-response)))
  "Returns full string definition for message of type 'GetGain-response"
  (cl:format cl:nil "int32 kp~%int32 ki~%int32 kd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetGain-response>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetGain-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetGain-response
    (cl:cons ':kp (kp msg))
    (cl:cons ':ki (ki msg))
    (cl:cons ':kd (kd msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetGain)))
  'GetGain-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetGain)))
  'GetGain-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGain)))
  "Returns string type for a service object of type '<GetGain>"
  "robot_msgs/GetGain")