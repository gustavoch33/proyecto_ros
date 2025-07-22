; Auto-generated. Do not edit!


(cl:in-package robot_msgs-msg)


;//! \htmlinclude mode_status.msg.html

(cl:defclass <mode_status> (roslisp-msg-protocol:ros-message)
  ((docking
    :reader docking
    :initarg :docking
    :type cl:boolean
    :initform cl:nil)
   (manual
    :reader manual
    :initarg :manual
    :type cl:boolean
    :initform cl:nil)
   (navigation
    :reader navigation
    :initarg :navigation
    :type cl:boolean
    :initform cl:nil)
   (mapping
    :reader mapping
    :initarg :mapping
    :type cl:boolean
    :initform cl:nil)
   (stand_by
    :reader stand_by
    :initarg :stand_by
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass mode_status (<mode_status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mode_status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mode_status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-msg:<mode_status> is deprecated: use robot_msgs-msg:mode_status instead.")))

(cl:ensure-generic-function 'docking-val :lambda-list '(m))
(cl:defmethod docking-val ((m <mode_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:docking-val is deprecated.  Use robot_msgs-msg:docking instead.")
  (docking m))

(cl:ensure-generic-function 'manual-val :lambda-list '(m))
(cl:defmethod manual-val ((m <mode_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:manual-val is deprecated.  Use robot_msgs-msg:manual instead.")
  (manual m))

(cl:ensure-generic-function 'navigation-val :lambda-list '(m))
(cl:defmethod navigation-val ((m <mode_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:navigation-val is deprecated.  Use robot_msgs-msg:navigation instead.")
  (navigation m))

(cl:ensure-generic-function 'mapping-val :lambda-list '(m))
(cl:defmethod mapping-val ((m <mode_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:mapping-val is deprecated.  Use robot_msgs-msg:mapping instead.")
  (mapping m))

(cl:ensure-generic-function 'stand_by-val :lambda-list '(m))
(cl:defmethod stand_by-val ((m <mode_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:stand_by-val is deprecated.  Use robot_msgs-msg:stand_by instead.")
  (stand_by m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mode_status>) ostream)
  "Serializes a message object of type '<mode_status>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'docking) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'manual) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'navigation) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mapping) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stand_by) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mode_status>) istream)
  "Deserializes a message object of type '<mode_status>"
    (cl:setf (cl:slot-value msg 'docking) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'manual) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'navigation) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'mapping) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'stand_by) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mode_status>)))
  "Returns string type for a message object of type '<mode_status>"
  "robot_msgs/mode_status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mode_status)))
  "Returns string type for a message object of type 'mode_status"
  "robot_msgs/mode_status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mode_status>)))
  "Returns md5sum for a message object of type '<mode_status>"
  "401e19daf4dfa2be65d1fcd32ec6dd29")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mode_status)))
  "Returns md5sum for a message object of type 'mode_status"
  "401e19daf4dfa2be65d1fcd32ec6dd29")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mode_status>)))
  "Returns full string definition for message of type '<mode_status>"
  (cl:format cl:nil "bool docking~%bool manual~%bool navigation~%bool mapping~%bool stand_by~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mode_status)))
  "Returns full string definition for message of type 'mode_status"
  (cl:format cl:nil "bool docking~%bool manual~%bool navigation~%bool mapping~%bool stand_by~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mode_status>))
  (cl:+ 0
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mode_status>))
  "Converts a ROS message object to a list"
  (cl:list 'mode_status
    (cl:cons ':docking (docking msg))
    (cl:cons ':manual (manual msg))
    (cl:cons ':navigation (navigation msg))
    (cl:cons ':mapping (mapping msg))
    (cl:cons ':stand_by (stand_by msg))
))
