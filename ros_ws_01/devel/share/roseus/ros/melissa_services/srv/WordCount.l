;; Auto-generated. Do not edit!


(when (boundp 'melissa_services::WordCount)
  (if (not (find-package "MELISSA_SERVICES"))
    (make-package "MELISSA_SERVICES"))
  (shadow 'WordCount (find-package "MELISSA_SERVICES")))
(unless (find-package "MELISSA_SERVICES::WORDCOUNT")
  (make-package "MELISSA_SERVICES::WORDCOUNT"))
(unless (find-package "MELISSA_SERVICES::WORDCOUNTREQUEST")
  (make-package "MELISSA_SERVICES::WORDCOUNTREQUEST"))
(unless (find-package "MELISSA_SERVICES::WORDCOUNTRESPONSE")
  (make-package "MELISSA_SERVICES::WORDCOUNTRESPONSE"))

(in-package "ROS")





(defclass melissa_services::WordCountRequest
  :super ros::object
  :slots (_words ))

(defmethod melissa_services::WordCountRequest
  (:init
   (&key
    ((:words __words) "")
    )
   (send-super :init)
   (setq _words (string __words))
   self)
  (:words
   (&optional __words)
   (if __words (setq _words __words)) _words)
  (:serialization-length
   ()
   (+
    ;; string _words
    4 (length _words)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _words
       (write-long (length _words) s) (princ _words s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _words
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _words (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass melissa_services::WordCountResponse
  :super ros::object
  :slots (_count ))

(defmethod melissa_services::WordCountResponse
  (:init
   (&key
    ((:count __count) 0)
    )
   (send-super :init)
   (setq _count (round __count))
   self)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:serialization-length
   ()
   (+
    ;; uint32 _count
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _count
       (write-long _count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass melissa_services::WordCount
  :super ros::object
  :slots ())

(setf (get melissa_services::WordCount :md5sum-) "58903d21a3264f3408d79ba79e9f7c7e")
(setf (get melissa_services::WordCount :datatype-) "melissa_services/WordCount")
(setf (get melissa_services::WordCount :request) melissa_services::WordCountRequest)
(setf (get melissa_services::WordCount :response) melissa_services::WordCountResponse)

(defmethod melissa_services::WordCountRequest
  (:response () (instance melissa_services::WordCountResponse :init)))

(setf (get melissa_services::WordCountRequest :md5sum-) "58903d21a3264f3408d79ba79e9f7c7e")
(setf (get melissa_services::WordCountRequest :datatype-) "melissa_services/WordCountRequest")
(setf (get melissa_services::WordCountRequest :definition-)
      "string words
---
uint32 count
")

(setf (get melissa_services::WordCountResponse :md5sum-) "58903d21a3264f3408d79ba79e9f7c7e")
(setf (get melissa_services::WordCountResponse :datatype-) "melissa_services/WordCountResponse")
(setf (get melissa_services::WordCountResponse :definition-)
      "string words
---
uint32 count
")



(provide :melissa_services/WordCount "58903d21a3264f3408d79ba79e9f7c7e")


