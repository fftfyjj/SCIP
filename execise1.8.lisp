(define (cube-iter last-guess guess x)
  (if (good-enough? guess last-guess)
      guess
    (cube-iter guess (guess-good guess x)
		x)))
(define (good-enough? x y)
  (< (/ (abs (- x y)) x) 0.000001))

;(define (good-enough? x y)
;  (< (abs (- (* x x) y)) 0.00000000001))

(define (abs x)
  (if (> x 0) x (- 0 x)))

(define (guess-good x y)
  (/ (+ (/ y (* x x)) (* 2 x)) 3))
      
(define (cube x)
  (cube-iter 1.0 (guess-good 1.0 x) x))