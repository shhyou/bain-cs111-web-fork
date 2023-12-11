#lang racket/base

(require rackunit
         (submod "snake_lib.rkt" internal))

(define-struct game [snake food obstacles ticks])
(define-struct snake [heading segments])

;; Usage:
;; - Run: raco test snake_lib_test.rkt
;; - Or: Run in DrRacket. Make sure the test submodule is
;;       checked in Language -> Choose Language ->
;;       The Racket Language -> Submodules to Run
(module+ test
  (check-equal? 
   (num-free-posns
    (make-game (make-snake 'up (list (make-posn 5 1))) 
               (list (make-posn 9 1) (make-posn 9 2))
               empty
               5))
   (- (sqr board-length) 3))

  (check-equal? 
   (nth-free-posn
    0
    (make-posn 1 1)
    (make-game (make-snake 'up (list (make-posn 9 9))) empty empty 5))
   (make-posn 1 1))
  (check-equal? 
   (nth-free-posn
    1
    (make-posn 1 1)
    (make-game (make-snake 'up (list (make-posn 9 9))) empty empty 5))
   (make-posn 2 1))
  (check-equal? 
   (nth-free-posn
    board-length
    (make-posn 1 1)
    (make-game (make-snake 'up (list (make-posn 9 9))) empty empty 5))
   (make-posn 1 2))
  (check-equal? 
   (nth-free-posn
    board-length
    (make-posn 1 1)
    (make-game (make-snake 'up (list (make-posn 5 1))) (list (make-posn 9 1)) empty 5))
   (make-posn 3 2))

  (check-equal? 
   (next-free-posn
    (make-posn 49 2)
    (make-game (make-snake 'up (list (make-posn 49 2)))
               (list (make-posn 50 2))
               empty
               5))
   (make-posn 1 3))

  (check-equal? (next-posn (make-posn 1 1)) (make-posn 2 1))
  (check-equal? (next-posn (make-posn 50 1)) (make-posn 1 2))

  (check-equal? 
   (occupied? (make-posn 1 2)
              (make-game (make-snake 'up (list (make-posn 1 2)))
                         (list (make-posn 3 4))
                         empty
                         5))
   true)
  (check-equal?
   (occupied? (make-posn 1 2)
              (make-game (make-snake 'up (list (make-posn 3 4)))
                         (list (make-posn 1 2))
                         empty
                         5))
   true)
  (check-equal? 
   (occupied? (make-posn 0 2)
              (make-game (make-snake 'up (list (make-posn 1 2)))
                         (list (make-posn 3 4))
                         empty
                         5))
   false)
  )
