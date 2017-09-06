(define (sqrt-iter last-guess guess x)
  (if (good-enough? guess last-guess)
      guess
    (sqrt-iter guess (guess-good guess x)
		x)))
(define (good-enough? x y)
  (< (/ (abs (- x y)) x) 0.000001))

;(define (good-enough? x y)
;  (< (abs (- (* x x) y)) 0.00000000001))

(define (abs x)
  (if (> x 0) x (- 0 x)))

(define (guess-good x y)
  (/ (+ x (/ y x)) 2))
      
(define (sqrt x)
  (sqrt-iter 1.0 (guess-good 1.0 x) x))
