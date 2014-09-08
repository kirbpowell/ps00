;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |5|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
; Exercise 5
; sq : Number -> Number
; GIVEN: a number
; RETURNS: the square of the given number
; Examples:
; (sq 5) => 25
; (sq 11) => 121
(define (sq x)
  (* x x))

(check-expect (sq 5) 25)
(check-expect (sq 11) 121)