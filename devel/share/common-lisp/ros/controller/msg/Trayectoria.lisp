; Auto-generated. Do not edit!


(cl:in-package controller-msg)


;//! \htmlinclude Trayectoria.msg.html

(cl:defclass <Trayectoria> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (t
    :reader t
    :initarg :t
    :type cl:float
    :initform 0.0))
)

(cl:defclass Trayectoria (<Trayectoria>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Trayectoria>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Trayectoria)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name controller-msg:<Trayectoria> is deprecated: use controller-msg:Trayectoria instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Trayectoria>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-msg:x-val is deprecated.  Use controller-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Trayectoria>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-msg:y-val is deprecated.  Use controller-msg:y instead.")
  (y m))

(cl:ensure-generic-function 't-val :lambda-list '(m))
(cl:defmethod t-val ((m <Trayectoria>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-msg:t-val is deprecated.  Use controller-msg:t instead.")
  (t m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Trayectoria>) ostream)
  "Serializes a message object of type '<Trayectoria>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 't))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Trayectoria>) istream)
  "Deserializes a message object of type '<Trayectoria>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 't) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Trayectoria>)))
  "Returns string type for a message object of type '<Trayectoria>"
  "controller/Trayectoria")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Trayectoria)))
  "Returns string type for a message object of type 'Trayectoria"
  "controller/Trayectoria")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Trayectoria>)))
  "Returns md5sum for a message object of type '<Trayectoria>"
  "4a28bd10bf2ad79a2c715f25c5a7ebd3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Trayectoria)))
  "Returns md5sum for a message object of type 'Trayectoria"
  "4a28bd10bf2ad79a2c715f25c5a7ebd3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Trayectoria>)))
  "Returns full string definition for message of type '<Trayectoria>"
  (cl:format cl:nil "float64 x~%float64 y~%float64 t~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Trayectoria)))
  "Returns full string definition for message of type 'Trayectoria"
  (cl:format cl:nil "float64 x~%float64 y~%float64 t~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Trayectoria>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Trayectoria>))
  "Converts a ROS message object to a list"
  (cl:list 'Trayectoria
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':t (t msg))
))
