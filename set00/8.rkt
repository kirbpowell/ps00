;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |8|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
; circle-area : Number -> Number
; GIVEN: Radius r of a circle
; RETURNS: that circle's area, using the formula pi * r^2
; Examples:
; (circle-area 1) -> 3.141592653589793
; (circle-area 5) -> 78.53981633974483
; (circle-area 7) -> 153.93804002589985

(define (circle-area r)
  (* pi (* r r)))

(check-within (circle-area 1) pi 0.0000001)
(check-within (circle-area 5) 78.53981633974483  0.00000000001)
(check-within (circle-area 7) 153.93804002589985 0.00000000001)