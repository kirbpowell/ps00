;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |3|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
; Exercise #3
; f->c : Number -> Number
; GIVEN: a temperature in degrees Fahrenheit 
; RETURNS: the equivalent temperature in degrees Celsius.
; Examples:
; (f->c 32)  => 0
; (f->c 100) => 37.77777777777778
(define (f->c f)
  (* (- f 32) (/ 5 9)))

(check-expect (f->c 32) 0)
(check-expect (f->c 212) 100) 
(check-within (f->c 67) 19.4 0.1)
(check-within (f->c 90) 32.3 0.1)