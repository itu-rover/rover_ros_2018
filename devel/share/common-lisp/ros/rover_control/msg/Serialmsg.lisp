; Auto-generated. Do not edit!


(cl:in-package rover_control-msg)


;//! \htmlinclude Serialmsg.msg.html

(cl:defclass <Serialmsg> (roslisp-msg-protocol:ros-message)
  ((motor
    :reader motor
    :initarg :motor
    :type cl:string
    :initform "")
   (robotarm
    :reader robotarm
    :initarg :robotarm
    :type cl:string
    :initform "")
   (battery
    :reader battery
    :initarg :battery
    :type cl:string
    :initform "")
   (lora
    :reader lora
    :initarg :lora
    :type cl:string
    :initform "")
   (sensor
    :reader sensor
    :initarg :sensor
    :type cl:string
    :initform ""))
)

(cl:defclass Serialmsg (<Serialmsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Serialmsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Serialmsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rover_control-msg:<Serialmsg> is deprecated: use rover_control-msg:Serialmsg instead.")))

(cl:ensure-generic-function 'motor-val :lambda-list '(m))
(cl:defmethod motor-val ((m <Serialmsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_control-msg:motor-val is deprecated.  Use rover_control-msg:motor instead.")
  (motor m))

(cl:ensure-generic-function 'robotarm-val :lambda-list '(m))
(cl:defmethod robotarm-val ((m <Serialmsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_control-msg:robotarm-val is deprecated.  Use rover_control-msg:robotarm instead.")
  (robotarm m))

(cl:ensure-generic-function 'battery-val :lambda-list '(m))
(cl:defmethod battery-val ((m <Serialmsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_control-msg:battery-val is deprecated.  Use rover_control-msg:battery instead.")
  (battery m))

(cl:ensure-generic-function 'lora-val :lambda-list '(m))
(cl:defmethod lora-val ((m <Serialmsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_control-msg:lora-val is deprecated.  Use rover_control-msg:lora instead.")
  (lora m))

(cl:ensure-generic-function 'sensor-val :lambda-list '(m))
(cl:defmethod sensor-val ((m <Serialmsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_control-msg:sensor-val is deprecated.  Use rover_control-msg:sensor instead.")
  (sensor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Serialmsg>) ostream)
  "Serializes a message object of type '<Serialmsg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'motor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'motor))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robotarm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robotarm))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'battery))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'battery))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'lora))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'lora))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sensor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sensor))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Serialmsg>) istream)
  "Deserializes a message object of type '<Serialmsg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'motor) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robotarm) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robotarm) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'battery) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'battery) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lora) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'lora) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensor) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sensor) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Serialmsg>)))
  "Returns string type for a message object of type '<Serialmsg>"
  "rover_control/Serialmsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Serialmsg)))
  "Returns string type for a message object of type 'Serialmsg"
  "rover_control/Serialmsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Serialmsg>)))
  "Returns md5sum for a message object of type '<Serialmsg>"
  "f7d62d3f0b4e8ce27ed379c441273f9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Serialmsg)))
  "Returns md5sum for a message object of type 'Serialmsg"
  "f7d62d3f0b4e8ce27ed379c441273f9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Serialmsg>)))
  "Returns full string definition for message of type '<Serialmsg>"
  (cl:format cl:nil "~%   string motor~%   string robotarm~%   string battery~%   string lora~%   string sensor~%   ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Serialmsg)))
  "Returns full string definition for message of type 'Serialmsg"
  (cl:format cl:nil "~%   string motor~%   string robotarm~%   string battery~%   string lora~%   string sensor~%   ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Serialmsg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'motor))
     4 (cl:length (cl:slot-value msg 'robotarm))
     4 (cl:length (cl:slot-value msg 'battery))
     4 (cl:length (cl:slot-value msg 'lora))
     4 (cl:length (cl:slot-value msg 'sensor))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Serialmsg>))
  "Converts a ROS message object to a list"
  (cl:list 'Serialmsg
    (cl:cons ':motor (motor msg))
    (cl:cons ':robotarm (robotarm msg))
    (cl:cons ':battery (battery msg))
    (cl:cons ':lora (lora msg))
    (cl:cons ':sensor (sensor msg))
))
