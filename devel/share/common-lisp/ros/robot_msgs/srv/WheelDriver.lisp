; Auto-generated. Do not edit!


(cl:in-package robot_msgs-srv)


;//! \htmlinclude WheelDriver-request.msg.html

(cl:defclass <WheelDriver-request> (roslisp-msg-protocol:ros-message)
  ((todo
    :reader todo
    :initarg :todo
    :type cl:string
    :initform ""))
)

(cl:defclass WheelDriver-request (<WheelDriver-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelDriver-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelDriver-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-srv:<WheelDriver-request> is deprecated: use robot_msgs-srv:WheelDriver-request instead.")))

(cl:ensure-generic-function 'todo-val :lambda-list '(m))
(cl:defmethod todo-val ((m <WheelDriver-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:todo-val is deprecated.  Use robot_msgs-srv:todo instead.")
  (todo m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelDriver-request>) ostream)
  "Serializes a message object of type '<WheelDriver-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'todo))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'todo))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelDriver-request>) istream)
  "Deserializes a message object of type '<WheelDriver-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'todo) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'todo) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelDriver-request>)))
  "Returns string type for a service object of type '<WheelDriver-request>"
  "robot_msgs/WheelDriverRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelDriver-request)))
  "Returns string type for a service object of type 'WheelDriver-request"
  "robot_msgs/WheelDriverRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelDriver-request>)))
  "Returns md5sum for a message object of type '<WheelDriver-request>"
  "fa35b3456e4cbe35bdeeb16d2d0d52eb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelDriver-request)))
  "Returns md5sum for a message object of type 'WheelDriver-request"
  "fa35b3456e4cbe35bdeeb16d2d0d52eb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelDriver-request>)))
  "Returns full string definition for message of type '<WheelDriver-request>"
  (cl:format cl:nil "string todo~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelDriver-request)))
  "Returns full string definition for message of type 'WheelDriver-request"
  (cl:format cl:nil "string todo~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelDriver-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'todo))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelDriver-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelDriver-request
    (cl:cons ':todo (todo msg))
))
;//! \htmlinclude WheelDriver-response.msg.html

(cl:defclass <WheelDriver-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass WheelDriver-response (<WheelDriver-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelDriver-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelDriver-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-srv:<WheelDriver-response> is deprecated: use robot_msgs-srv:WheelDriver-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <WheelDriver-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:status-val is deprecated.  Use robot_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelDriver-response>) ostream)
  "Serializes a message object of type '<WheelDriver-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelDriver-response>) istream)
  "Deserializes a message object of type '<WheelDriver-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelDriver-response>)))
  "Returns string type for a service object of type '<WheelDriver-response>"
  "robot_msgs/WheelDriverResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelDriver-response)))
  "Returns string type for a service object of type 'WheelDriver-response"
  "robot_msgs/WheelDriverResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelDriver-response>)))
  "Returns md5sum for a message object of type '<WheelDriver-response>"
  "fa35b3456e4cbe35bdeeb16d2d0d52eb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelDriver-response)))
  "Returns md5sum for a message object of type 'WheelDriver-response"
  "fa35b3456e4cbe35bdeeb16d2d0d52eb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelDriver-response>)))
  "Returns full string definition for message of type '<WheelDriver-response>"
  (cl:format cl:nil "bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelDriver-response)))
  "Returns full string definition for message of type 'WheelDriver-response"
  (cl:format cl:nil "bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelDriver-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelDriver-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelDriver-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WheelDriver)))
  'WheelDriver-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WheelDriver)))
  'WheelDriver-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelDriver)))
  "Returns string type for a service object of type '<WheelDriver>"
  "robot_msgs/WheelDriver")