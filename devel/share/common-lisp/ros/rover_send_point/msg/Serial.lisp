; Auto-generated. Do not edit!


(cl:in-package rover_send_point-msg)


;//! \htmlinclude Serial.msg.html

(cl:defclass <Serial> (roslisp-msg-protocol:ros-message)
  ((serial_to_motor
    :reader serial_to_motor
    :initarg :serial_to_motor
    :type cl:string
    :initform ""))
)

(cl:defclass Serial (<Serial>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Serial>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Serial)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rover_send_point-msg:<Serial> is deprecated: use rover_send_point-msg:Serial instead.")))

(cl:ensure-generic-function 'serial_to_motor-val :lambda-list '(m))
(cl:defmethod serial_to_motor-val ((m <Serial>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_send_point-msg:serial_to_motor-val is deprecated.  Use rover_send_point-msg:serial_to_motor instead.")
  (serial_to_motor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Serial>) ostream)
  "Serializes a message object of type '<Serial>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'serial_to_motor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'serial_to_motor))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Serial>) istream)
  "Deserializes a message object of type '<Serial>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Serial>)))
  "Returns string type for a message object of type '<Serial>"
  "rover_send_point/Serial")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Serial)))
  "Returns string type for a message object of type 'Serial"
  "rover_send_point/Serial")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Serial>)))
  "Returns md5sum for a message object of type '<Serial>"
  "8d2d93a91c9b0fcf44968cf2ad55fb56")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Serial)))
  "Returns md5sum for a message object of type 'Serial"
  "8d2d93a91c9b0fcf44968cf2ad55fb56")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Serial>)))
  "Returns full string definition for message of type '<Serial>"
  (cl:format cl:nil "~%   string serial_to_motor~%   ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Serial)))
  "Returns full string definition for message of type 'Serial"
  (cl:format cl:nil "~%   string serial_to_motor~%   ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Serial>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'serial_to_motor))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Serial>))
  "Converts a ROS message object to a list"
  (cl:list 'Serial
    (cl:cons ':serial_to_motor (serial_to_motor msg))
))
