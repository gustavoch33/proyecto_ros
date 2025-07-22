; Auto-generated. Do not edit!


(cl:in-package robot_msgs-msg)


;//! \htmlinclude modes_status.msg.html

(cl:defclass <modes_status> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (modes
    :reader modes
    :initarg :modes
    :type robot_msgs-msg:mode_status
    :initform (cl:make-instance 'robot_msgs-msg:mode_status)))
)

(cl:defclass modes_status (<modes_status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <modes_status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'modes_status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-msg:<modes_status> is deprecated: use robot_msgs-msg:modes_status instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <modes_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:header-val is deprecated.  Use robot_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'modes-val :lambda-list '(m))
(cl:defmethod modes-val ((m <modes_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:modes-val is deprecated.  Use robot_msgs-msg:modes instead.")
  (modes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <modes_status>) ostream)
  "Serializes a message object of type '<modes_status>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'modes) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <modes_status>) istream)
  "Deserializes a message object of type '<modes_status>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'modes) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<modes_status>)))
  "Returns string type for a message object of type '<modes_status>"
  "robot_msgs/modes_status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'modes_status)))
  "Returns string type for a message object of type 'modes_status"
  "robot_msgs/modes_status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<modes_status>)))
  "Returns md5sum for a message object of type '<modes_status>"
  "1df3589f7b661a51051719c491977642")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'modes_status)))
  "Returns md5sum for a message object of type 'modes_status"
  "1df3589f7b661a51051719c491977642")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<modes_status>)))
  "Returns full string definition for message of type '<modes_status>"
  (cl:format cl:nil "Header header~%robot_msgs/mode_status modes~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: robot_msgs/mode_status~%bool docking~%bool manual~%bool navigation~%bool mapping~%bool stand_by~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'modes_status)))
  "Returns full string definition for message of type 'modes_status"
  (cl:format cl:nil "Header header~%robot_msgs/mode_status modes~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: robot_msgs/mode_status~%bool docking~%bool manual~%bool navigation~%bool mapping~%bool stand_by~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <modes_status>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'modes))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <modes_status>))
  "Converts a ROS message object to a list"
  (cl:list 'modes_status
    (cl:cons ':header (header msg))
    (cl:cons ':modes (modes msg))
))
