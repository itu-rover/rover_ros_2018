; Auto-generated. Do not edit!


(cl:in-package rover_control-msg)


;//! \htmlinclude serial.msg.html

(cl:defclass <serial> (roslisp-msg-protocol:ros-message)
  ((cmd_vel
    :reader cmd_vel
    :initarg :cmd_vel
    :type cl:string
    :initform "")
   (gps
    :reader gps
    :initarg :gps
    :type cl:string
    :initform ""))
)

(cl:defclass serial (<serial>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <serial>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'serial)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rover_control-msg:<serial> is deprecated: use rover_control-msg:serial instead.")))

(cl:ensure-generic-function 'cmd_vel-val :lambda-list '(m))
(cl:defmethod cmd_vel-val ((m <serial>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_control-msg:cmd_vel-val is deprecated.  Use rover_control-msg:cmd_vel instead.")
  (cmd_vel m))

(cl:ensure-generic-function 'gps-val :lambda-list '(m))
(cl:defmethod gps-val ((m <serial>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_control-msg:gps-val is deprecated.  Use rover_control-msg:gps instead.")
  (gps m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <serial>) ostream)
  "Serializes a message object of type '<serial>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cmd_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cmd_vel))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gps))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <serial>) istream)
  "Deserializes a message object of type '<serial>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd_vel) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cmd_vel) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gps) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gps) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<serial>)))
  "Returns string type for a message object of type '<serial>"
  "rover_control/serial")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'serial)))
  "Returns string type for a message object of type 'serial"
  "rover_control/serial")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<serial>)))
  "Returns md5sum for a message object of type '<serial>"
  "388e2110b60d12d6782240611a4f13c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'serial)))
  "Returns md5sum for a message object of type 'serial"
  "388e2110b60d12d6782240611a4f13c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<serial>)))
  "Returns full string definition for message of type '<serial>"
  (cl:format cl:nil "~%   string cmd_vel~%   string gps~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'serial)))
  "Returns full string definition for message of type 'serial"
  (cl:format cl:nil "~%   string cmd_vel~%   string gps~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <serial>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'cmd_vel))
     4 (cl:length (cl:slot-value msg 'gps))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <serial>))
  "Converts a ROS message object to a list"
  (cl:list 'serial
    (cl:cons ':cmd_vel (cmd_vel msg))
    (cl:cons ':gps (gps msg))
))
