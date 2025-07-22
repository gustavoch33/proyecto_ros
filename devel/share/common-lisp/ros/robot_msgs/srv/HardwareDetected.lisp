; Auto-generated. Do not edit!


(cl:in-package robot_msgs-srv)


;//! \htmlinclude HardwareDetected-request.msg.html

(cl:defclass <HardwareDetected-request> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass HardwareDetected-request (<HardwareDetected-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HardwareDetected-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HardwareDetected-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-srv:<HardwareDetected-request> is deprecated: use robot_msgs-srv:HardwareDetected-request instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <HardwareDetected-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:success-val is deprecated.  Use robot_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HardwareDetected-request>) ostream)
  "Serializes a message object of type '<HardwareDetected-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HardwareDetected-request>) istream)
  "Deserializes a message object of type '<HardwareDetected-request>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HardwareDetected-request>)))
  "Returns string type for a service object of type '<HardwareDetected-request>"
  "robot_msgs/HardwareDetectedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HardwareDetected-request)))
  "Returns string type for a service object of type 'HardwareDetected-request"
  "robot_msgs/HardwareDetectedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HardwareDetected-request>)))
  "Returns md5sum for a message object of type '<HardwareDetected-request>"
  "c7a46eb97e96ced9baa3a1296f1c576c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HardwareDetected-request)))
  "Returns md5sum for a message object of type 'HardwareDetected-request"
  "c7a46eb97e96ced9baa3a1296f1c576c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HardwareDetected-request>)))
  "Returns full string definition for message of type '<HardwareDetected-request>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HardwareDetected-request)))
  "Returns full string definition for message of type 'HardwareDetected-request"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HardwareDetected-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HardwareDetected-request>))
  "Converts a ROS message object to a list"
  (cl:list 'HardwareDetected-request
    (cl:cons ':success (success msg))
))
;//! \htmlinclude HardwareDetected-response.msg.html

(cl:defclass <HardwareDetected-response> (roslisp-msg-protocol:ros-message)
  ((received
    :reader received
    :initarg :received
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass HardwareDetected-response (<HardwareDetected-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HardwareDetected-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HardwareDetected-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-srv:<HardwareDetected-response> is deprecated: use robot_msgs-srv:HardwareDetected-response instead.")))

(cl:ensure-generic-function 'received-val :lambda-list '(m))
(cl:defmethod received-val ((m <HardwareDetected-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:received-val is deprecated.  Use robot_msgs-srv:received instead.")
  (received m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HardwareDetected-response>) ostream)
  "Serializes a message object of type '<HardwareDetected-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'received) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HardwareDetected-response>) istream)
  "Deserializes a message object of type '<HardwareDetected-response>"
    (cl:setf (cl:slot-value msg 'received) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HardwareDetected-response>)))
  "Returns string type for a service object of type '<HardwareDetected-response>"
  "robot_msgs/HardwareDetectedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HardwareDetected-response)))
  "Returns string type for a service object of type 'HardwareDetected-response"
  "robot_msgs/HardwareDetectedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HardwareDetected-response>)))
  "Returns md5sum for a message object of type '<HardwareDetected-response>"
  "c7a46eb97e96ced9baa3a1296f1c576c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HardwareDetected-response)))
  "Returns md5sum for a message object of type 'HardwareDetected-response"
  "c7a46eb97e96ced9baa3a1296f1c576c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HardwareDetected-response>)))
  "Returns full string definition for message of type '<HardwareDetected-response>"
  (cl:format cl:nil "bool received~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HardwareDetected-response)))
  "Returns full string definition for message of type 'HardwareDetected-response"
  (cl:format cl:nil "bool received~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HardwareDetected-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HardwareDetected-response>))
  "Converts a ROS message object to a list"
  (cl:list 'HardwareDetected-response
    (cl:cons ':received (received msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'HardwareDetected)))
  'HardwareDetected-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'HardwareDetected)))
  'HardwareDetected-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HardwareDetected)))
  "Returns string type for a service object of type '<HardwareDetected>"
  "robot_msgs/HardwareDetected")