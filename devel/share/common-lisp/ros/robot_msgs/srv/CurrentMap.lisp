; Auto-generated. Do not edit!


(cl:in-package robot_msgs-srv)


;//! \htmlinclude CurrentMap-request.msg.html

(cl:defclass <CurrentMap-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass CurrentMap-request (<CurrentMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CurrentMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CurrentMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-srv:<CurrentMap-request> is deprecated: use robot_msgs-srv:CurrentMap-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CurrentMap-request>) ostream)
  "Serializes a message object of type '<CurrentMap-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CurrentMap-request>) istream)
  "Deserializes a message object of type '<CurrentMap-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CurrentMap-request>)))
  "Returns string type for a service object of type '<CurrentMap-request>"
  "robot_msgs/CurrentMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CurrentMap-request)))
  "Returns string type for a service object of type 'CurrentMap-request"
  "robot_msgs/CurrentMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CurrentMap-request>)))
  "Returns md5sum for a message object of type '<CurrentMap-request>"
  "aa8aee7f6c8d5b8306117b46af679744")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CurrentMap-request)))
  "Returns md5sum for a message object of type 'CurrentMap-request"
  "aa8aee7f6c8d5b8306117b46af679744")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CurrentMap-request>)))
  "Returns full string definition for message of type '<CurrentMap-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CurrentMap-request)))
  "Returns full string definition for message of type 'CurrentMap-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CurrentMap-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CurrentMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CurrentMap-request
))
;//! \htmlinclude CurrentMap-response.msg.html

(cl:defclass <CurrentMap-response> (roslisp-msg-protocol:ros-message)
  ((map
    :reader map
    :initarg :map
    :type cl:string
    :initform ""))
)

(cl:defclass CurrentMap-response (<CurrentMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CurrentMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CurrentMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-srv:<CurrentMap-response> is deprecated: use robot_msgs-srv:CurrentMap-response instead.")))

(cl:ensure-generic-function 'map-val :lambda-list '(m))
(cl:defmethod map-val ((m <CurrentMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:map-val is deprecated.  Use robot_msgs-srv:map instead.")
  (map m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CurrentMap-response>) ostream)
  "Serializes a message object of type '<CurrentMap-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CurrentMap-response>) istream)
  "Deserializes a message object of type '<CurrentMap-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CurrentMap-response>)))
  "Returns string type for a service object of type '<CurrentMap-response>"
  "robot_msgs/CurrentMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CurrentMap-response)))
  "Returns string type for a service object of type 'CurrentMap-response"
  "robot_msgs/CurrentMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CurrentMap-response>)))
  "Returns md5sum for a message object of type '<CurrentMap-response>"
  "aa8aee7f6c8d5b8306117b46af679744")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CurrentMap-response)))
  "Returns md5sum for a message object of type 'CurrentMap-response"
  "aa8aee7f6c8d5b8306117b46af679744")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CurrentMap-response>)))
  "Returns full string definition for message of type '<CurrentMap-response>"
  (cl:format cl:nil "string map~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CurrentMap-response)))
  "Returns full string definition for message of type 'CurrentMap-response"
  (cl:format cl:nil "string map~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CurrentMap-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CurrentMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CurrentMap-response
    (cl:cons ':map (map msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CurrentMap)))
  'CurrentMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CurrentMap)))
  'CurrentMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CurrentMap)))
  "Returns string type for a service object of type '<CurrentMap>"
  "robot_msgs/CurrentMap")