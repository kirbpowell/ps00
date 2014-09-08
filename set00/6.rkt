;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |6|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
; Exercise 6
; quadratic-root : Number Number Numer -> Number
; GIVEN: The a, b and c of a quadratic equation
; RETURNS: The positive root of the corresponding
; quadratic equation
; Examples:
; (quadratic-root 1 3 -4) => 1
; (quadratic-root 5 10 -15) => 1
; (quadratic-root 5 10 -10) => 0.73205... (within 0.01)
(define (quadratic-root a b c)
  (/ (+ (- b) (sqrt (- (sqr b) (* 4 a c))))
     (+ a a)))

(check-expect (quadratic-root 1 3 -4) 1)
(check-expect (quadratic-root 5 10 -15) 1)
(check-within (quadratic-root 5 10 -10) 0.723 0.01)