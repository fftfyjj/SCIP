(define (func1 x y z)
  (if (> x y) 
      (if (> y z)
	  (+ x y)
	(+ x z))
    (if (> x z)
	(+ x y)
      (+ y z))))

