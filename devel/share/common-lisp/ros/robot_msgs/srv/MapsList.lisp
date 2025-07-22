; Auto-generated. Do not edit!


(cl:in-package robot_msgs-srv)


;//! \htmlinclude MapsList-request.msg.html

(cl:defclass <MapsList-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MapsList-request (<MapsList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapsList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapsList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-srv:<MapsList-request> is deprecated: use robot_msgs-srv:MapsList-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapsList-request>) ostream)
  "Serializes a message object of type '<MapsList-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapsList-request>) istream)
  "Deserializes a message object of type '<MapsList-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapsList-request>)))
  "Returns string type for a service object of type '<MapsList-request>"
  "robot_msgs/MapsListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapsList-request)))
  "Returns string type for a service object of type 'MapsList-request"
  "robot_msgs/MapsListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapsList-request>)))
  "Returns md5sum for a message object of type '<MapsList-request>"
  "95634a3fee1a76a7a235711f38773ee4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapsList-request)))
  "Returns md5sum for a message object of type 'MapsList-request"
  "95634a3fee1a76a7a235711f38773ee4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapsList-request>)))
  "Returns full string definition for message of type '<MapsList-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapsList-request)))
  "Returns full string definition for message of type 'MapsList-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapsList-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapsList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MapsList-request
))
;//! \htmlinclude MapsList-response.msg.html

(cl:defclass <MapsList-response> (roslisp-msg-protocol:ros-message)
  ((maps
    :reader maps
    :initarg :maps
    :type (cl:vector robot_msgs-msg:map_size)
   :initform (cl:make-array 0 :element-type 'robot_msgs-msg:map_size :initial-element (cl:make-instance 'robot_msgs-msg:map_size))))
)

(cl:defclass MapsList-response (<MapsList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapsList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapsList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-srv:<MapsList-response> is deprecated: use robot_msgs-srv:MapsList-response instead.")))

(cl:ensure-generic-function 'maps-val :lambda-list '(m))
(cl:defmethod maps-val ((m <MapsList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:maps-val is deprecated.  Use robot_msgs-srv:maps instead.")
  (maps m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapsList-response>) ostream)
  "Serializes a message object of type '<MapsList-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'maps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'maps))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapsList-response>) istream)
  "Deserializes a message object of type '<MapsList-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'maps) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'maps)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robot_msgs-msg:map_size))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapsList-response>)))
  "Returns string type for a service object of type '<MapsList-response>"
  "robot_msgs/MapsListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapsList-response)))
  "Returns string type for a service object of type 'MapsList-response"
  "robot_msgs/MapsListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapsList-response>)))
  "Returns md5sum for a message object of type '<MapsList-response>"
  "95634a3fee1a76a7a235711f38773ee4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapsList-response)))
  "Returns md5sum for a message object of type 'MapsList-response"
  "95634a3fee1a76a7a235711f38773ee4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapsList-response>)))
  "Returns full string definition for message of type '<MapsList-response>"
  (cl:format cl:nil "robot_msgs/map_size[] maps~%~%================================================================================~%MSG: robot_msgs/map_size~%string id~%int32 size~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapsList-response)))
  "Returns full string definition for message of type 'MapsList-response"
  (cl:format cl:nil "robot_msgs/map_size[] maps~%~%================================================================================~%MSG: robot_msgs/map_size~%string id~%int32 size~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapsList-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'maps) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapsList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MapsList-response
    (cl:cons ':maps (maps msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MapsList)))
  'MapsList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MapsList)))
  'MapsList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapsList)))
  "Returns string type for a service object of type '<MapsList>"
  "robot_msgs/MapsList")