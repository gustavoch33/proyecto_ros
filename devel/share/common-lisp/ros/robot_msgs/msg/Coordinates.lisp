; Auto-generated. Do not edit!


(cl:in-package robot_msgs-msg)


;//! \htmlinclude Coordinates.msg.html

(cl:defclass <Coordinates> (roslisp-msg-protocol:ros-message)
  ((latitude
    :reader latitude
    :initarg :latitude
    :type cl:float
    :initform 0.0)
   (longitude
    :reader longitude
    :initarg :longitude
    :type cl:float
    :initform 0.0)
   (status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil)
   (source
    :reader source
    :initarg :source
    :type cl:string
    :initform ""))
)

(cl:defclass Coordinates (<Coordinates>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Coordinates>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Coordinates)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-msg:<Coordinates> is deprecated: use robot_msgs-msg:Coordinates instead.")))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <Coordinates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:latitude-val is deprecated.  Use robot_msgs-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <Coordinates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:longitude-val is deprecated.  Use robot_msgs-msg:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <Coordinates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:status-val is deprecated.  Use robot_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'source-val :lambda-list '(m))
(cl:defmethod source-val ((m <Coordinates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:source-val is deprecated.  Use robot_msgs-msg:source instead.")
  (source m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Coordinates>) ostream)
  "Serializes a message object of type '<Coordinates>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'source))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'source))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Coordinates>) istream)
  "Deserializes a message object of type '<Coordinates>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'source) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'source) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Coordinates>)))
  "Returns string type for a message object of type '<Coordinates>"
  "robot_msgs/Coordinates")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Coordinates)))
  "Returns string type for a message object of type 'Coordinates"
  "robot_msgs/Coordinates")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Coordinates>)))
  "Returns md5sum for a message object of type '<Coordinates>"
  "46d1ab400450b699b64a700e5bad67d2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Coordinates)))
  "Returns md5sum for a message object of type 'Coordinates"
  "46d1ab400450b699b64a700e5bad67d2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Coordinates>)))
  "Returns full string definition for message of type '<Coordinates>"
  (cl:format cl:nil "float32 latitude~%float32 longitude~%bool status~%string source~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Coordinates)))
  "Returns full string definition for message of type 'Coordinates"
  (cl:format cl:nil "float32 latitude~%float32 longitude~%bool status~%string source~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Coordinates>))
  (cl:+ 0
     4
     4
     1
     4 (cl:length (cl:slot-value msg 'source))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Coordinates>))
  "Converts a ROS message object to a list"
  (cl:list 'Coordinates
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':status (status msg))
    (cl:cons ':source (source msg))
))
