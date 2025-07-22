; Auto-generated. Do not edit!


(cl:in-package robot_msgs-srv)


;//! \htmlinclude Modes-request.msg.html

(cl:defclass <Modes-request> (roslisp-msg-protocol:ros-message)
  ((is_start
    :reader is_start
    :initarg :is_start
    :type cl:boolean
    :initform cl:nil)
   (state
    :reader state
    :initarg :state
    :type cl:string
    :initform "")
   (param
    :reader param
    :initarg :param
    :type cl:string
    :initform ""))
)

(cl:defclass Modes-request (<Modes-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Modes-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Modes-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-srv:<Modes-request> is deprecated: use robot_msgs-srv:Modes-request instead.")))

(cl:ensure-generic-function 'is_start-val :lambda-list '(m))
(cl:defmethod is_start-val ((m <Modes-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:is_start-val is deprecated.  Use robot_msgs-srv:is_start instead.")
  (is_start m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Modes-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:state-val is deprecated.  Use robot_msgs-srv:state instead.")
  (state m))

(cl:ensure-generic-function 'param-val :lambda-list '(m))
(cl:defmethod param-val ((m <Modes-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:param-val is deprecated.  Use robot_msgs-srv:param instead.")
  (param m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Modes-request>) ostream)
  "Serializes a message object of type '<Modes-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_start) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'param))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'param))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Modes-request>) istream)
  "Deserializes a message object of type '<Modes-request>"
    (cl:setf (cl:slot-value msg 'is_start) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'param) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'param) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Modes-request>)))
  "Returns string type for a service object of type '<Modes-request>"
  "robot_msgs/ModesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Modes-request)))
  "Returns string type for a service object of type 'Modes-request"
  "robot_msgs/ModesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Modes-request>)))
  "Returns md5sum for a message object of type '<Modes-request>"
  "324304a9077e74c893e232386723f0a2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Modes-request)))
  "Returns md5sum for a message object of type 'Modes-request"
  "324304a9077e74c893e232386723f0a2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Modes-request>)))
  "Returns full string definition for message of type '<Modes-request>"
  (cl:format cl:nil "bool is_start~%string state~%string param~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Modes-request)))
  "Returns full string definition for message of type 'Modes-request"
  (cl:format cl:nil "bool is_start~%string state~%string param~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Modes-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'state))
     4 (cl:length (cl:slot-value msg 'param))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Modes-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Modes-request
    (cl:cons ':is_start (is_start msg))
    (cl:cons ':state (state msg))
    (cl:cons ':param (param msg))
))
;//! \htmlinclude Modes-response.msg.html

(cl:defclass <Modes-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (error
    :reader error
    :initarg :error
    :type cl:string
    :initform ""))
)

(cl:defclass Modes-response (<Modes-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Modes-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Modes-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-srv:<Modes-response> is deprecated: use robot_msgs-srv:Modes-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Modes-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:success-val is deprecated.  Use robot_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <Modes-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:error-val is deprecated.  Use robot_msgs-srv:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Modes-response>) ostream)
  "Serializes a message object of type '<Modes-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Modes-response>) istream)
  "Deserializes a message object of type '<Modes-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Modes-response>)))
  "Returns string type for a service object of type '<Modes-response>"
  "robot_msgs/ModesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Modes-response)))
  "Returns string type for a service object of type 'Modes-response"
  "robot_msgs/ModesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Modes-response>)))
  "Returns md5sum for a message object of type '<Modes-response>"
  "324304a9077e74c893e232386723f0a2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Modes-response)))
  "Returns md5sum for a message object of type 'Modes-response"
  "324304a9077e74c893e232386723f0a2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Modes-response>)))
  "Returns full string definition for message of type '<Modes-response>"
  (cl:format cl:nil "bool success~%string error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Modes-response)))
  "Returns full string definition for message of type 'Modes-response"
  (cl:format cl:nil "bool success~%string error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Modes-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'error))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Modes-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Modes-response
    (cl:cons ':success (success msg))
    (cl:cons ':error (error msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Modes)))
  'Modes-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Modes)))
  'Modes-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Modes)))
  "Returns string type for a service object of type '<Modes>"
  "robot_msgs/Modes")