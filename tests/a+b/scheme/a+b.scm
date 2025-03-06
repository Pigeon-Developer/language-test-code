(define (read-numbers)
  (let* ((line (read-line))
         (numbers (string-split line #\space)))
    (map string->number numbers)))

(define (string-split str ch)
  (let loop ((str str) (result '()))
    (let ((pos (string-index str ch)))
      (if pos
          (loop (substring str (+ pos 1) (string-length str))
                (cons (substring str 0 pos) result))
          (reverse (cons str result))))))

(let ((numbers (read-numbers)))
  (if (>= (length numbers) 2)
      (display (+ (car numbers) (cadr numbers)))
      (display "Error: Need two numbers"))
  (newline))