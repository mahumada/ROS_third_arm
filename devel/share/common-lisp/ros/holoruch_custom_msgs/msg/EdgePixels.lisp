; Auto-generated. Do not edit!


(cl:in-package holoruch_custom_msgs-msg)


;//! \htmlinclude EdgePixels.msg.html

(cl:defclass <EdgePixels> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (edge_components
    :reader edge_components
    :initarg :edge_components
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass EdgePixels (<EdgePixels>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EdgePixels>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EdgePixels)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name holoruch_custom_msgs-msg:<EdgePixels> is deprecated: use holoruch_custom_msgs-msg:EdgePixels instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <EdgePixels>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader holoruch_custom_msgs-msg:header-val is deprecated.  Use holoruch_custom_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'edge_components-val :lambda-list '(m))
(cl:defmethod edge_components-val ((m <EdgePixels>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader holoruch_custom_msgs-msg:edge_components-val is deprecated.  Use holoruch_custom_msgs-msg:edge_components instead.")
  (edge_components m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EdgePixels>) ostream)
  "Serializes a message object of type '<EdgePixels>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'edge_components))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'edge_components))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EdgePixels>) istream)
  "Deserializes a message object of type '<EdgePixels>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'edge_components) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'edge_components)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EdgePixels>)))
  "Returns string type for a message object of type '<EdgePixels>"
  "holoruch_custom_msgs/EdgePixels")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EdgePixels)))
  "Returns string type for a message object of type 'EdgePixels"
  "holoruch_custom_msgs/EdgePixels")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EdgePixels>)))
  "Returns md5sum for a message object of type '<EdgePixels>"
  "ce21e765bc9a7689ebcc6071732b3394")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EdgePixels)))
  "Returns md5sum for a message object of type 'EdgePixels"
  "ce21e765bc9a7689ebcc6071732b3394")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EdgePixels>)))
  "Returns full string definition for message of type '<EdgePixels>"
  (cl:format cl:nil "std_msgs/Header header~%int32[] edge_components~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EdgePixels)))
  "Returns full string definition for message of type 'EdgePixels"
  (cl:format cl:nil "std_msgs/Header header~%int32[] edge_components~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EdgePixels>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'edge_components) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EdgePixels>))
  "Converts a ROS message object to a list"
  (cl:list 'EdgePixels
    (cl:cons ':header (header msg))
    (cl:cons ':edge_components (edge_components msg))
))
