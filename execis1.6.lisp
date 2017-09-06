;会陷入死循环：因为该新版if条件表达式未对子项的求值有特殊定义，mit-scheme采用的应用序求值，虽然实际已经找到了最优解，但是还是会继续迭代循环。

;实际测试结果：提示到达递归迭代的最大深度，求值失败！
(define (new-if predicate the-clause else-clause)
  (cond (predicate the-clause)
	(else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
      guess
    (sqrt-iter (guess-good guess x)
		x)))

(define (good-enough? x y)
  (< (abs (- (* x x) y)) 0.00000000001))

(define (abs x)
  (new-if (> x 0) x (- 0 x)))

(define (guess-good x y)
  (/ (+ x (/ y x)) 2))
      
(define (sqrt x)
  (sqrt-iter 1.0 x))
