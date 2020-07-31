(setf *random-state* (make-random-state t))

(defun toss-coin ()
  (nth (random 2)
       (list "Heads" "Tails")))

(defun main (time)
  (let ((heads 0))
    (format t "Tossing a coin...~%")
    (loop for cnt from 1 to time 
          for res = (toss-coin)
          when (string= "Heads" res)
          do (incf heads)
          do (format t "Round ~a: ~a~%" cnt res))
    (format t "Heads: ~a, Tails: ~a~%"
            heads
            (- time heads))))

(main 3)
