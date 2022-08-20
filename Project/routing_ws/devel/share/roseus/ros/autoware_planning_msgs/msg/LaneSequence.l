;; Auto-generated. Do not edit!


(when (boundp 'autoware_planning_msgs::LaneSequence)
  (if (not (find-package "AUTOWARE_PLANNING_MSGS"))
    (make-package "AUTOWARE_PLANNING_MSGS"))
  (shadow 'LaneSequence (find-package "AUTOWARE_PLANNING_MSGS")))
(unless (find-package "AUTOWARE_PLANNING_MSGS::LANESEQUENCE")
  (make-package "AUTOWARE_PLANNING_MSGS::LANESEQUENCE"))

(in-package "ROS")
;;//! \htmlinclude LaneSequence.msg.html


(defclass autoware_planning_msgs::LaneSequence
  :super ros::object
  :slots (_lane_ids ))

(defmethod autoware_planning_msgs::LaneSequence
  (:init
   (&key
    ((:lane_ids __lane_ids) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _lane_ids __lane_ids)
   self)
  (:lane_ids
   (&optional __lane_ids)
   (if __lane_ids (setq _lane_ids __lane_ids)) _lane_ids)
  (:serialization-length
   ()
   (+
    ;; int64[] _lane_ids
    (* 8    (length _lane_ids)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64[] _lane_ids
     (write-long (length _lane_ids) s)
     (dotimes (i (length _lane_ids))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _lane_ids i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _lane_ids i)) (= (length ((elt _lane_ids i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _lane_ids i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _lane_ids i) . bv) 1) -1) s))
             ((and (class (elt _lane_ids i)) (= (length ((elt _lane_ids i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _lane_ids i) . bv) 0) s)
              (write-long (if (>= (elt _lane_ids i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _lane_ids i) s)(write-long (if (>= (elt _lane_ids i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64[] _lane_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lane_ids (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _lane_ids i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _lane_ids i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;;
   self)
  )

(setf (get autoware_planning_msgs::LaneSequence :md5sum-) "8ff2c02f553be6713a6038a7d7d22b99")
(setf (get autoware_planning_msgs::LaneSequence :datatype-) "autoware_planning_msgs/LaneSequence")
(setf (get autoware_planning_msgs::LaneSequence :definition-)
      "int64[] lane_ids

")



(provide :autoware_planning_msgs/LaneSequence "8ff2c02f553be6713a6038a7d7d22b99")


