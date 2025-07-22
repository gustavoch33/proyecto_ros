; Auto-generated. Do not edit!


(cl:in-package robot_msgs-msg)


;//! \htmlinclude sensorStatus.msg.html

(cl:defclass <sensorStatus> (roslisp-msg-protocol:ros-message)
  ((is_ok
    :reader is_ok
    :initarg :is_ok
    :type cl:boolean
    :initform cl:nil)
   (error
    :reader error
    :initarg :error
    :type cl:string
    :initform ""))
)

(cl:defclass sensorStatus (<sensorStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sensorStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sensorStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-msg:<sensorStatus> is deprecated: use robot_msgs-msg:sensorStatus instead.")))

(cl:ensure-generic-function 'is_ok-val :lambda-list '(m))
(cl:defmethod is_ok-val ((m <sensorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:is_ok-val is deprecated.  Use robot_msgs-msg:is_ok instead.")
  (is_ok m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <sensorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:error-val is deprecated.  Use robot_msgs-msg:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sensorStatus>) ostream)
  "Serializes a message object of type '<sensorStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_ok) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sensorStatus>) istream)
  "Deserializes a message object of type '<sensorStatus>"
    (cl:setf (cl:slot-value msg 'is_ok) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sensorStatus>)))
  "Returns string type for a message object of type '<sensorStatus>"
  "robot_msgs/sensorStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sensorStatus)))
  "Returns string type for a message object of type 'sensorStatus"
  "robot_msgs/sensorStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sensorStatus>)))
  "Returns md5sum for a message object of type '<sensorStatus>"
  "608c2e6bc29e45e2dc4f580fdae4997b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sensorStatus)))
  "Returns md5sum for a message object of type 'sensorStatus"
  "608c2e6bc29e45e2dc4f580fdae4997b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sensorStatus>)))
  "Returns full string definition for message of type '<sensorStatus>"
  (cl:format cl:nil "bool is_ok~%string error~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sensorStatus)))
  "Returns full string definition for message of type 'sensorStatus"
  (cl:format cl:nil "bool is_ok~%string error~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sensorStatus>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'error))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sensorStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'sensorStatus
    (cl:cons ':is_ok (is_ok msg))
    (cl:cons ':error (error msg))
))
