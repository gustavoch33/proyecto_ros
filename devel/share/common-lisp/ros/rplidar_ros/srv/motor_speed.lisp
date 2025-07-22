; Auto-generated. Do not edit!


(cl:in-package rplidar_ros-srv)


;//! \htmlinclude motor_speed-request.msg.html

(cl:defclass <motor_speed-request> (roslisp-msg-protocol:ros-message)
  ((speed
    :reader speed
    :initarg :speed
    :type cl:fixnum
    :initform 0))
)

(cl:defclass motor_speed-request (<motor_speed-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <motor_speed-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'motor_speed-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rplidar_ros-srv:<motor_speed-request> is deprecated: use rplidar_ros-srv:motor_speed-request instead.")))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <motor_speed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rplidar_ros-srv:speed-val is deprecated.  Use rplidar_ros-srv:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <motor_speed-request>) ostream)
  "Serializes a message object of type '<motor_speed-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <motor_speed-request>) istream)
  "Deserializes a message object of type '<motor_speed-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<motor_speed-request>)))
  "Returns string type for a service object of type '<motor_speed-request>"
  "rplidar_ros/motor_speedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motor_speed-request)))
  "Returns string type for a service object of type 'motor_speed-request"
  "rplidar_ros/motor_speedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<motor_speed-request>)))
  "Returns md5sum for a message object of type '<motor_speed-request>"
  "6fefab52ba1ca2e290111bbeaf3560e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'motor_speed-request)))
  "Returns md5sum for a message object of type 'motor_speed-request"
  "6fefab52ba1ca2e290111bbeaf3560e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<motor_speed-request>)))
  "Returns full string definition for message of type '<motor_speed-request>"
  (cl:format cl:nil "uint16 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'motor_speed-request)))
  "Returns full string definition for message of type 'motor_speed-request"
  (cl:format cl:nil "uint16 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <motor_speed-request>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <motor_speed-request>))
  "Converts a ROS message object to a list"
  (cl:list 'motor_speed-request
    (cl:cons ':speed (speed msg))
))
;//! \htmlinclude motor_speed-response.msg.html

(cl:defclass <motor_speed-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass motor_speed-response (<motor_speed-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <motor_speed-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'motor_speed-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rplidar_ros-srv:<motor_speed-response> is deprecated: use rplidar_ros-srv:motor_speed-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <motor_speed-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rplidar_ros-srv:result-val is deprecated.  Use rplidar_ros-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <motor_speed-response>) ostream)
  "Serializes a message object of type '<motor_speed-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <motor_speed-response>) istream)
  "Deserializes a message object of type '<motor_speed-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<motor_speed-response>)))
  "Returns string type for a service object of type '<motor_speed-response>"
  "rplidar_ros/motor_speedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motor_speed-response)))
  "Returns string type for a service object of type 'motor_speed-response"
  "rplidar_ros/motor_speedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<motor_speed-response>)))
  "Returns md5sum for a message object of type '<motor_speed-response>"
  "6fefab52ba1ca2e290111bbeaf3560e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'motor_speed-response)))
  "Returns md5sum for a message object of type 'motor_speed-response"
  "6fefab52ba1ca2e290111bbeaf3560e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<motor_speed-response>)))
  "Returns full string definition for message of type '<motor_speed-response>"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'motor_speed-response)))
  "Returns full string definition for message of type 'motor_speed-response"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <motor_speed-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <motor_speed-response>))
  "Converts a ROS message object to a list"
  (cl:list 'motor_speed-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'motor_speed)))
  'motor_speed-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'motor_speed)))
  'motor_speed-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motor_speed)))
  "Returns string type for a service object of type '<motor_speed>"
  "rplidar_ros/motor_speed")