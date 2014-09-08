;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |10|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
; sum-larger-two : Number Number Number -> Number
; GIVEN: Any three Numbers
; RETURNS: the sum of the two larger numbers
; Examples:
; (sum-larger-two 1 2 3) -> 5
; (sum-larger-two 5 10 15) -> 25
; (sum-larger-two -1 1 3) -> 4

(define (sum-larger-two x y z)
  (cond
    [(and (> x y) (> x z) (> y z)) (+ x y)]
    [(and (> x y) (> x z) (> z y)) (+ x z)]
    [(and (> y z) (> y x) (> z x)) (+ y z)]
    [(and (> y z) (> y x) (> x z)) (+ y x)]
    [(and (> z x) (> z y) (> x y)) (+ z x)]
    [(and (> z y) (> z x) (> y x)) (+ z y)]))

(check-expect (sum-larger-two 1 2 3) 5)
(check-expect (sum-larger-two 5 10 15) 25)
(check-expect (sum-larger-two 2 -1 3) 5)
(check-expect (sum-larger-two 3 1 2) 5)