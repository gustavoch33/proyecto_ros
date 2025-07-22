; Auto-generated. Do not edit!


(cl:in-package robot_msgs-msg)


;//! \htmlinclude robotPose.msg.html

(cl:defclass <robotPose> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (resolution
    :reader resolution
    :initarg :resolution
    :type cl:float
    :initform 0.0))
)

(cl:defclass robotPose (<robotPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robotPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robotPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-msg:<robotPose> is deprecated: use robot_msgs-msg:robotPose instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <robotPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:pose-val is deprecated.  Use robot_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'resolution-val :lambda-list '(m))
(cl:defmethod resolution-val ((m <robotPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:resolution-val is deprecated.  Use robot_msgs-msg:resolution instead.")
  (resolution m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robotPose>) ostream)
  "Serializes a message object of type '<robotPose>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'resolution))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robotPose>) istream)
  "Deserializes a message object of type '<robotPose>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'resolution) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robotPose>)))
  "Returns string type for a message object of type '<robotPose>"
  "robot_msgs/robotPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robotPose)))
  "Returns string type for a message object of type 'robotPose"
  "robot_msgs/robotPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robotPose>)))
  "Returns md5sum for a message object of type '<robotPose>"
  "d74e6214c9884a7c0f81a8910bcb3b84")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robotPose)))
  "Returns md5sum for a message object of type 'robotPose"
  "d74e6214c9884a7c0f81a8910bcb3b84")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robotPose>)))
  "Returns full string definition for message of type '<robotPose>"
  (cl:format cl:nil "geometry_msgs/Pose pose~%float32 resolution~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robotPose)))
  "Returns full string definition for message of type 'robotPose"
  (cl:format cl:nil "geometry_msgs/Pose pose~%float32 resolution~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robotPose>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robotPose>))
  "Converts a ROS message object to a list"
  (cl:list 'robotPose
    (cl:cons ':pose (pose msg))
    (cl:cons ':resolution (resolution msg))
))
