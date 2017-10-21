; Auto-generated. Do not edit!


(cl:in-package rover_send_point-msg)


;//! \htmlinclude ferhat_garen.msg.html

(cl:defclass <ferhat_garen> (roslisp-msg-protocol:ros-message)
  ((garen
    :reader garen
    :initarg :garen
    :type cl:string
    :initform "")
   (ferhat
    :reader ferhat
    :initarg :ferhat
    :type cl:string
    :initform ""))
)

(cl:defclass ferhat_garen (<ferhat_garen>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ferhat_garen>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ferhat_garen)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rover_send_point-msg:<ferhat_garen> is deprecated: use rover_send_point-msg:ferhat_garen instead.")))

(cl:ensure-generic-function 'garen-val :lambda-list '(m))
(cl:defmethod garen-val ((m <ferhat_garen>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_send_point-msg:garen-val is deprecated.  Use rover_send_point-msg:garen instead.")
  (garen m))

(cl:ensure-generic-function 'ferhat-val :lambda-list '(m))
(cl:defmethod ferhat-val ((m <ferhat_garen>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_send_point-msg:ferhat-val is deprecated.  Use rover_send_point-msg:ferhat instead.")
  (ferhat m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ferhat_garen>) ostream)
  "Serializes a message object of type '<ferhat_garen>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'garen))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'garen))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ferhat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ferhat))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ferhat_garen>) istream)
  "Deserializes a message object of type '<ferhat_garen>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'garen) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'garen) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ferhat) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ferhat) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ferhat_garen>)))
  "Returns string type for a message object of type '<ferhat_garen>"
  "rover_send_point/ferhat_garen")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ferhat_garen)))
  "Returns string type for a message object of type 'ferhat_garen"
  "rover_send_point/ferhat_garen")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ferhat_garen>)))
  "Returns md5sum for a message object of type '<ferhat_garen>"
  "9efc387478be838a4cfd6bb3e5d7227f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ferhat_garen)))
  "Returns md5sum for a message object of type 'ferhat_garen"
  "9efc387478be838a4cfd6bb3e5d7227f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ferhat_garen>)))
  "Returns full string definition for message of type '<ferhat_garen>"
  (cl:format cl:nil "~%   string garen~%   string ferhat~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ferhat_garen)))
  "Returns full string definition for message of type 'ferhat_garen"
  (cl:format cl:nil "~%   string garen~%   string ferhat~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ferhat_garen>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'garen))
     4 (cl:length (cl:slot-value msg 'ferhat))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ferhat_garen>))
  "Converts a ROS message object to a list"
  (cl:list 'ferhat_garen
    (cl:cons ':garen (garen msg))
    (cl:cons ':ferhat (ferhat msg))
))
