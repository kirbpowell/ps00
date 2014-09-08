;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |9|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
; even-num? : Number -> Boolean
; GIVEN: Any Number
; RETURNS: True if that number is divisible by 2, false otherwise
; Examples:
; (even-num? 2) -> true
; (even-num? 5) -> false
; (even-num? 8) -> true
; (even-num? 15) -> false

(define (even-num? x)
  (if (zero? (remainder x 2)) true false))

(check-expect (even-num? 2) true)
(check-expect (even-num? 5) false)
(check-expect (even-num? 8) true)
(check-expect (even-num? 15) false)