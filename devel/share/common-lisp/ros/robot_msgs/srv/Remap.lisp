; Auto-generated. Do not edit!


(cl:in-package robot_msgs-srv)


;//! \htmlinclude Remap-request.msg.html

(cl:defclass <Remap-request> (roslisp-msg-protocol:ros-message)
  ((is_start
    :reader is_start
    :initarg :is_start
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Remap-request (<Remap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Remap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Remap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-srv:<Remap-request> is deprecated: use robot_msgs-srv:Remap-request instead.")))

(cl:ensure-generic-function 'is_start-val :lambda-list '(m))
(cl:defmethod is_start-val ((m <Remap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:is_start-val is deprecated.  Use robot_msgs-srv:is_start instead.")
  (is_start m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Remap-request>) ostream)
  "Serializes a message object of type '<Remap-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_start) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Remap-request>) istream)
  "Deserializes a message object of type '<Remap-request>"
    (cl:setf (cl:slot-value msg 'is_start) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Remap-request>)))
  "Returns string type for a service object of type '<Remap-request>"
  "robot_msgs/RemapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Remap-request)))
  "Returns string type for a service object of type 'Remap-request"
  "robot_msgs/RemapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Remap-request>)))
  "Returns md5sum for a message object of type '<Remap-request>"
  "2b0934cf769a9ec6232ba13fe7cc3bd6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Remap-request)))
  "Returns md5sum for a message object of type 'Remap-request"
  "2b0934cf769a9ec6232ba13fe7cc3bd6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Remap-request>)))
  "Returns full string definition for message of type '<Remap-request>"
  (cl:format cl:nil "bool is_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Remap-request)))
  "Returns full string definition for message of type 'Remap-request"
  (cl:format cl:nil "bool is_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Remap-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Remap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Remap-request
    (cl:cons ':is_start (is_start msg))
))
;//! \htmlinclude Remap-response.msg.html

(cl:defclass <Remap-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Remap-response (<Remap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Remap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Remap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-srv:<Remap-response> is deprecated: use robot_msgs-srv:Remap-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Remap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:success-val is deprecated.  Use robot_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Remap-response>) ostream)
  "Serializes a message object of type '<Remap-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Remap-response>) istream)
  "Deserializes a message object of type '<Remap-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Remap-response>)))
  "Returns string type for a service object of type '<Remap-response>"
  "robot_msgs/RemapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Remap-response)))
  "Returns string type for a service object of type 'Remap-response"
  "robot_msgs/RemapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Remap-response>)))
  "Returns md5sum for a message object of type '<Remap-response>"
  "2b0934cf769a9ec6232ba13fe7cc3bd6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Remap-response)))
  "Returns md5sum for a message object of type 'Remap-response"
  "2b0934cf769a9ec6232ba13fe7cc3bd6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Remap-response>)))
  "Returns full string definition for message of type '<Remap-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Remap-response)))
  "Returns full string definition for message of type 'Remap-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Remap-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Remap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Remap-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Remap)))
  'Remap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Remap)))
  'Remap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Remap)))
  "Returns string type for a service object of type '<Remap>"
  "robot_msgs/Remap")