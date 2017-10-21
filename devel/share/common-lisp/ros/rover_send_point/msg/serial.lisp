; Auto-generated. Do not edit!


(cl:in-package rover_send_point-msg)


;//! \htmlinclude serial.msg.html

(cl:defclass <serial> (roslisp-msg-protocol:ros-message)
  ((serial_to_motor
    :reader serial_to_motor
    :initarg :serial_to_motor
    :type cl:string
    :initform ""))
)

(cl:defclass serial (<serial>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <serial>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'serial)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rover_send_point-msg:<serial> is deprecated: use rover_send_point-msg:serial instead.")))

(cl:ensure-generic-function 'serial_to_motor-val :lambda-list '(m))
(cl:defmethod serial_to_motor-val ((m <serial>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_send_point-msg:serial_to_motor-val is deprecated.  Use rover_send_point-msg:serial_to_motor instead.")
  (serial_to_motor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <serial>) ostream)
  "Serializes a message object of type '<serial>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'serial_to_motor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'serial_to_motor))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <serial>) istream)
  "Deserializes a message object of type '<serial>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'serial_to_motor) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'serial_to_motor) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<serial>)))
  "Returns string type for a message object of type '<serial>"
  "rover_send_point/serial")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'serial)))
  "Returns string type for a message object of type 'serial"
  "rover_send_point/serial")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<serial>)))
  "Returns md5sum for a message object of type '<serial>"
  "8d2d93a91c9b0fcf44968cf2ad55fb56")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'serial)))
  "Returns md5sum for a message object of type 'serial"
  "8d2d93a91c9b0fcf44968cf2ad55fb56")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<serial>)))
  "Returns full string definition for message of type '<serial>"
  (cl:format cl:nil "~%   string serial_to_motor~%   ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'serial)))
  "Returns full string definition for message of type 'serial"
  (cl:format cl:nil "~%   string serial_to_motor~%   ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <serial>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'serial_to_motor))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <serial>))
  "Converts a ROS message object to a list"
  (cl:list 'serial
    (cl:cons ':serial_to_motor (serial_to_motor msg))
))
