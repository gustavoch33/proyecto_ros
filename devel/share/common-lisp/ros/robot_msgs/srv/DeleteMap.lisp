; Auto-generated. Do not edit!


(cl:in-package robot_msgs-srv)


;//! \htmlinclude DeleteMap-request.msg.html

(cl:defclass <DeleteMap-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform ""))
)

(cl:defclass DeleteMap-request (<DeleteMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-srv:<DeleteMap-request> is deprecated: use robot_msgs-srv:DeleteMap-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <DeleteMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:id-val is deprecated.  Use robot_msgs-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteMap-request>) ostream)
  "Serializes a message object of type '<DeleteMap-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteMap-request>) istream)
  "Deserializes a message object of type '<DeleteMap-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteMap-request>)))
  "Returns string type for a service object of type '<DeleteMap-request>"
  "robot_msgs/DeleteMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteMap-request)))
  "Returns string type for a service object of type 'DeleteMap-request"
  "robot_msgs/DeleteMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteMap-request>)))
  "Returns md5sum for a message object of type '<DeleteMap-request>"
  "4dc5c1ae2e494627977ff6a6eeb914ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteMap-request)))
  "Returns md5sum for a message object of type 'DeleteMap-request"
  "4dc5c1ae2e494627977ff6a6eeb914ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteMap-request>)))
  "Returns full string definition for message of type '<DeleteMap-request>"
  (cl:format cl:nil "string id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteMap-request)))
  "Returns full string definition for message of type 'DeleteMap-request"
  (cl:format cl:nil "string id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteMap-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteMap-request
    (cl:cons ':id (id msg))
))
;//! \htmlinclude DeleteMap-response.msg.html

(cl:defclass <DeleteMap-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DeleteMap-response (<DeleteMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-srv:<DeleteMap-response> is deprecated: use robot_msgs-srv:DeleteMap-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DeleteMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:success-val is deprecated.  Use robot_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteMap-response>) ostream)
  "Serializes a message object of type '<DeleteMap-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteMap-response>) istream)
  "Deserializes a message object of type '<DeleteMap-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteMap-response>)))
  "Returns string type for a service object of type '<DeleteMap-response>"
  "robot_msgs/DeleteMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteMap-response)))
  "Returns string type for a service object of type 'DeleteMap-response"
  "robot_msgs/DeleteMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteMap-response>)))
  "Returns md5sum for a message object of type '<DeleteMap-response>"
  "4dc5c1ae2e494627977ff6a6eeb914ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteMap-response)))
  "Returns md5sum for a message object of type 'DeleteMap-response"
  "4dc5c1ae2e494627977ff6a6eeb914ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteMap-response>)))
  "Returns full string definition for message of type '<DeleteMap-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteMap-response)))
  "Returns full string definition for message of type 'DeleteMap-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteMap-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteMap-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DeleteMap)))
  'DeleteMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DeleteMap)))
  'DeleteMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteMap)))
  "Returns string type for a service object of type '<DeleteMap>"
  "robot_msgs/DeleteMap")