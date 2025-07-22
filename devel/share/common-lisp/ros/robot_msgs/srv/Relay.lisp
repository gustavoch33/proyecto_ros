; Auto-generated. Do not edit!


(cl:in-package robot_msgs-srv)


;//! \htmlinclude Relay-request.msg.html

(cl:defclass <Relay-request> (roslisp-msg-protocol:ros-message)
  ((relevador
    :reader relevador
    :initarg :relevador
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Relay-request (<Relay-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Relay-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Relay-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-srv:<Relay-request> is deprecated: use robot_msgs-srv:Relay-request instead.")))

(cl:ensure-generic-function 'relevador-val :lambda-list '(m))
(cl:defmethod relevador-val ((m <Relay-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:relevador-val is deprecated.  Use robot_msgs-srv:relevador instead.")
  (relevador m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Relay-request>) ostream)
  "Serializes a message object of type '<Relay-request>"
  (cl:let* ((signed (cl:slot-value msg 'relevador)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Relay-request>) istream)
  "Deserializes a message object of type '<Relay-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'relevador) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Relay-request>)))
  "Returns string type for a service object of type '<Relay-request>"
  "robot_msgs/RelayRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Relay-request)))
  "Returns string type for a service object of type 'Relay-request"
  "robot_msgs/RelayRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Relay-request>)))
  "Returns md5sum for a message object of type '<Relay-request>"
  "3f2a44b2fa1cd7db6632dacb1c985817")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Relay-request)))
  "Returns md5sum for a message object of type 'Relay-request"
  "3f2a44b2fa1cd7db6632dacb1c985817")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Relay-request>)))
  "Returns full string definition for message of type '<Relay-request>"
  (cl:format cl:nil "int8 relevador~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Relay-request)))
  "Returns full string definition for message of type 'Relay-request"
  (cl:format cl:nil "int8 relevador~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Relay-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Relay-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Relay-request
    (cl:cons ':relevador (relevador msg))
))
;//! \htmlinclude Relay-response.msg.html

(cl:defclass <Relay-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:string
    :initform "")
   (description
    :reader description
    :initarg :description
    :type cl:string
    :initform ""))
)

(cl:defclass Relay-response (<Relay-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Relay-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Relay-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-srv:<Relay-response> is deprecated: use robot_msgs-srv:Relay-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <Relay-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:status-val is deprecated.  Use robot_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <Relay-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:description-val is deprecated.  Use robot_msgs-srv:description instead.")
  (description m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Relay-response>) ostream)
  "Serializes a message object of type '<Relay-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'description))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Relay-response>) istream)
  "Deserializes a message object of type '<Relay-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Relay-response>)))
  "Returns string type for a service object of type '<Relay-response>"
  "robot_msgs/RelayResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Relay-response)))
  "Returns string type for a service object of type 'Relay-response"
  "robot_msgs/RelayResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Relay-response>)))
  "Returns md5sum for a message object of type '<Relay-response>"
  "3f2a44b2fa1cd7db6632dacb1c985817")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Relay-response)))
  "Returns md5sum for a message object of type 'Relay-response"
  "3f2a44b2fa1cd7db6632dacb1c985817")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Relay-response>)))
  "Returns full string definition for message of type '<Relay-response>"
  (cl:format cl:nil "string status~%string description~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Relay-response)))
  "Returns full string definition for message of type 'Relay-response"
  (cl:format cl:nil "string status~%string description~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Relay-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'status))
     4 (cl:length (cl:slot-value msg 'description))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Relay-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Relay-response
    (cl:cons ':status (status msg))
    (cl:cons ':description (description msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Relay)))
  'Relay-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Relay)))
  'Relay-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Relay)))
  "Returns string type for a service object of type '<Relay>"
  "robot_msgs/Relay")