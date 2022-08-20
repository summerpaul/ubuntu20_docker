;; Auto-generated. Do not edit!


(when (boundp 'autoware_planning_msgs::RouteSection)
  (if (not (find-package "AUTOWARE_PLANNING_MSGS"))
    (make-package "AUTOWARE_PLANNING_MSGS"))
  (shadow 'RouteSection (find-package "AUTOWARE_PLANNING_MSGS")))
(unless (find-package "AUTOWARE_PLANNING_MSGS::ROUTESECTION")
  (make-package "AUTOWARE_PLANNING_MSGS::ROUTESECTION"))

(in-package "ROS")
;;//! \htmlinclude RouteSection.msg.html


(defclass autoware_planning_msgs::RouteSection
  :super ros::object
  :slots (_lane_ids _preferred_lane_id _continued_lane_ids ))

(defmethod autoware_planning_msgs::RouteSection
  (:init
   (&key
    ((:lane_ids __lane_ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:preferred_lane_id __preferred_lane_id) 0)
    ((:continued_lane_ids __continued_lane_ids) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _lane_ids __lane_ids)
   (setq _preferred_lane_id (round __preferred_lane_id))
   (setq _continued_lane_ids __continued_lane_ids)
   self)
  (:lane_ids
   (&optional __lane_ids)
   (if __lane_ids (setq _lane_ids __lane_ids)) _lane_ids)
  (:preferred_lane_id
   (&optional __preferred_lane_id)
   (if __preferred_lane_id (setq _preferred_lane_id __preferred_lane_id)) _preferred_lane_id)
  (:continued_lane_ids
   (&optional __continued_lane_ids)
   (if __continued_lane_ids (setq _continued_lane_ids __continued_lane_ids)) _continued_lane_ids)
  (:serialization-length
   ()
   (+
    ;; int64[] _lane_ids
    (* 8    (length _lane_ids)) 4
    ;; int64 _preferred_lane_id
    8
    ;; int64[] _continued_lane_ids
    (* 8    (length _continued_lane_ids)) 4
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
     ;; int64 _preferred_lane_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _preferred_lane_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _preferred_lane_id) (= (length (_preferred_lane_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_preferred_lane_id . bv) 0) 0) s)
              (write-long (ash (elt (_preferred_lane_id . bv) 1) -1) s))
             ((and (class _preferred_lane_id) (= (length (_preferred_lane_id . bv)) 1)) ;; big1
              (write-long (elt (_preferred_lane_id . bv) 0) s)
              (write-long (if (>= _preferred_lane_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _preferred_lane_id s)(write-long (if (>= _preferred_lane_id 0) 0 #xffffffff) s)))
     ;; int64[] _continued_lane_ids
     (write-long (length _continued_lane_ids) s)
     (dotimes (i (length _continued_lane_ids))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _continued_lane_ids i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _continued_lane_ids i)) (= (length ((elt _continued_lane_ids i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _continued_lane_ids i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _continued_lane_ids i) . bv) 1) -1) s))
             ((and (class (elt _continued_lane_ids i)) (= (length ((elt _continued_lane_ids i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _continued_lane_ids i) . bv) 0) s)
              (write-long (if (>= (elt _continued_lane_ids i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _continued_lane_ids i) s)(write-long (if (>= (elt _continued_lane_ids i) 0) 0 #xffffffff) s)))
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
   ;; int64 _preferred_lane_id
#+(or :alpha :irix6 :x86_64)
      (setf _preferred_lane_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _preferred_lane_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64[] _continued_lane_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _continued_lane_ids (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _continued_lane_ids i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _continued_lane_ids i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get autoware_planning_msgs::RouteSection :md5sum-) "f2f5aadafa97ec1dda39866d5941c987")
(setf (get autoware_planning_msgs::RouteSection :datatype-) "autoware_planning_msgs/RouteSection")
(setf (get autoware_planning_msgs::RouteSection :definition-)
      "int64[] lane_ids
int64 preferred_lane_id
int64[] continued_lane_ids

")



(provide :autoware_planning_msgs/RouteSection "f2f5aadafa97ec1dda39866d5941c987")


