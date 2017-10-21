; Auto-generated. Do not edit!


(cl:in-package rover_send_point-msg)


;//! \htmlinclude Statemsg.msg.html

(cl:defclass <Statemsg> (roslisp-msg-protocol:ros-message)
  ((from_rover
    :reader from_rover
    :initarg :from_rover
    :type cl:string
    :initform "")
   (from_state
    :reader from_state
    :initarg :from_state
    :type cl:string
    :initform ""))
)

(cl:defclass Statemsg (<Statemsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Statemsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Statemsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rover_send_point-msg:<Statemsg> is deprecated: use rover_send_point-msg:Statemsg instead.")))

(cl:ensure-generic-function 'from_rover-val :lambda-list '(m))
(cl:defmethod from_rover-val ((m <Statemsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_send_point-msg:from_rover-val is deprecated.  Use rover_send_point-msg:from_rover instead.")
  (from_rover m))

(cl:ensure-generic-function 'from_state-val :lambda-list '(m))
(cl:defmethod from_state-val ((m <Statemsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_send_point-msg:from_state-val is deprecated.  Use rover_send_point-msg:from_state instead.")
  (from_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Statemsg>) ostream)
  "Serializes a message object of type '<Statemsg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'from_rover))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'from_rover))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'from_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'from_state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Statemsg>) istream)
  "Deserializes a message object of type '<Statemsg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'from_rover) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'from_rover) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'from_state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'from_state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Statemsg>)))
  "Returns string type for a message object of type '<Statemsg>"
  "rover_send_point/Statemsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Statemsg)))
  "Returns string type for a message object of type 'Statemsg"
  "rover_send_point/Statemsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Statemsg>)))
  "Returns md5sum for a message object of type '<Statemsg>"
  "018743e3f49a441664f3e7456bcc1cfc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Statemsg)))
  "Returns md5sum for a message object of type 'Statemsg"
  "018743e3f49a441664f3e7456bcc1cfc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Statemsg>)))
  "Returns full string definition for message of type '<Statemsg>"
  (cl:format cl:nil " ~%   string from_rover~%   string from_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Statemsg)))
  "Returns full string definition for message of type 'Statemsg"
  (cl:format cl:nil " ~%   string from_rover~%   string from_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Statemsg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'from_rover))
     4 (cl:length (cl:slot-value msg 'from_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Statemsg>))
  "Converts a ROS message object to a list"
  (cl:list 'Statemsg
    (cl:cons ':from_rover (from_rover msg))
    (cl:cons ':from_state (from_state msg))
))
