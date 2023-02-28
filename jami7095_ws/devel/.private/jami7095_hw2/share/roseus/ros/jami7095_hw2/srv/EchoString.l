;; Auto-generated. Do not edit!


(when (boundp 'jami7095_hw2::EchoString)
  (if (not (find-package "JAMI7095_HW2"))
    (make-package "JAMI7095_HW2"))
  (shadow 'EchoString (find-package "JAMI7095_HW2")))
(unless (find-package "JAMI7095_HW2::ECHOSTRING")
  (make-package "JAMI7095_HW2::ECHOSTRING"))
(unless (find-package "JAMI7095_HW2::ECHOSTRINGREQUEST")
  (make-package "JAMI7095_HW2::ECHOSTRINGREQUEST"))
(unless (find-package "JAMI7095_HW2::ECHOSTRINGRESPONSE")
  (make-package "JAMI7095_HW2::ECHOSTRINGRESPONSE"))

(in-package "ROS")





(defclass jami7095_hw2::EchoStringRequest
  :super ros::object
  :slots (_data ))

(defmethod jami7095_hw2::EchoStringRequest
  (:init
   (&key
    ((:data __data) "")
    )
   (send-super :init)
   (setq _data (string __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass jami7095_hw2::EchoStringResponse
  :super ros::object
  :slots (_echo ))

(defmethod jami7095_hw2::EchoStringResponse
  (:init
   (&key
    ((:echo __echo) "")
    )
   (send-super :init)
   (setq _echo (string __echo))
   self)
  (:echo
   (&optional __echo)
   (if __echo (setq _echo __echo)) _echo)
  (:serialization-length
   ()
   (+
    ;; string _echo
    4 (length _echo)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _echo
       (write-long (length _echo) s) (princ _echo s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _echo
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _echo (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass jami7095_hw2::EchoString
  :super ros::object
  :slots ())

(setf (get jami7095_hw2::EchoString :md5sum-) "e478228380bb2631fd59d58e07666a92")
(setf (get jami7095_hw2::EchoString :datatype-) "jami7095_hw2/EchoString")
(setf (get jami7095_hw2::EchoString :request) jami7095_hw2::EchoStringRequest)
(setf (get jami7095_hw2::EchoString :response) jami7095_hw2::EchoStringResponse)

(defmethod jami7095_hw2::EchoStringRequest
  (:response () (instance jami7095_hw2::EchoStringResponse :init)))

(setf (get jami7095_hw2::EchoStringRequest :md5sum-) "e478228380bb2631fd59d58e07666a92")
(setf (get jami7095_hw2::EchoStringRequest :datatype-) "jami7095_hw2/EchoStringRequest")
(setf (get jami7095_hw2::EchoStringRequest :definition-)
      "string data
---
string echo

")

(setf (get jami7095_hw2::EchoStringResponse :md5sum-) "e478228380bb2631fd59d58e07666a92")
(setf (get jami7095_hw2::EchoStringResponse :datatype-) "jami7095_hw2/EchoStringResponse")
(setf (get jami7095_hw2::EchoStringResponse :definition-)
      "string data
---
string echo

")



(provide :jami7095_hw2/EchoString "e478228380bb2631fd59d58e07666a92")


