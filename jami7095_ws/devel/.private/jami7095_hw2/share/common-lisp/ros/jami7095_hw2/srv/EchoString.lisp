; Auto-generated. Do not edit!


(cl:in-package jami7095_hw2-srv)


;//! \htmlinclude EchoString-request.msg.html

(cl:defclass <EchoString-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:string
    :initform ""))
)

(cl:defclass EchoString-request (<EchoString-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EchoString-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EchoString-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jami7095_hw2-srv:<EchoString-request> is deprecated: use jami7095_hw2-srv:EchoString-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <EchoString-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jami7095_hw2-srv:data-val is deprecated.  Use jami7095_hw2-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EchoString-request>) ostream)
  "Serializes a message object of type '<EchoString-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EchoString-request>) istream)
  "Deserializes a message object of type '<EchoString-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EchoString-request>)))
  "Returns string type for a service object of type '<EchoString-request>"
  "jami7095_hw2/EchoStringRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EchoString-request)))
  "Returns string type for a service object of type 'EchoString-request"
  "jami7095_hw2/EchoStringRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EchoString-request>)))
  "Returns md5sum for a message object of type '<EchoString-request>"
  "e478228380bb2631fd59d58e07666a92")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EchoString-request)))
  "Returns md5sum for a message object of type 'EchoString-request"
  "e478228380bb2631fd59d58e07666a92")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EchoString-request>)))
  "Returns full string definition for message of type '<EchoString-request>"
  (cl:format cl:nil "string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EchoString-request)))
  "Returns full string definition for message of type 'EchoString-request"
  (cl:format cl:nil "string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EchoString-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EchoString-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EchoString-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude EchoString-response.msg.html

(cl:defclass <EchoString-response> (roslisp-msg-protocol:ros-message)
  ((echo
    :reader echo
    :initarg :echo
    :type cl:string
    :initform ""))
)

(cl:defclass EchoString-response (<EchoString-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EchoString-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EchoString-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jami7095_hw2-srv:<EchoString-response> is deprecated: use jami7095_hw2-srv:EchoString-response instead.")))

(cl:ensure-generic-function 'echo-val :lambda-list '(m))
(cl:defmethod echo-val ((m <EchoString-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jami7095_hw2-srv:echo-val is deprecated.  Use jami7095_hw2-srv:echo instead.")
  (echo m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EchoString-response>) ostream)
  "Serializes a message object of type '<EchoString-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'echo))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'echo))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EchoString-response>) istream)
  "Deserializes a message object of type '<EchoString-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'echo) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'echo) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EchoString-response>)))
  "Returns string type for a service object of type '<EchoString-response>"
  "jami7095_hw2/EchoStringResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EchoString-response)))
  "Returns string type for a service object of type 'EchoString-response"
  "jami7095_hw2/EchoStringResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EchoString-response>)))
  "Returns md5sum for a message object of type '<EchoString-response>"
  "e478228380bb2631fd59d58e07666a92")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EchoString-response)))
  "Returns md5sum for a message object of type 'EchoString-response"
  "e478228380bb2631fd59d58e07666a92")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EchoString-response>)))
  "Returns full string definition for message of type '<EchoString-response>"
  (cl:format cl:nil "string echo~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EchoString-response)))
  "Returns full string definition for message of type 'EchoString-response"
  (cl:format cl:nil "string echo~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EchoString-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'echo))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EchoString-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EchoString-response
    (cl:cons ':echo (echo msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EchoString)))
  'EchoString-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EchoString)))
  'EchoString-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EchoString)))
  "Returns string type for a service object of type '<EchoString>"
  "jami7095_hw2/EchoString")