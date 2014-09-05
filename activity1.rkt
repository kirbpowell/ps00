;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname activity1) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
; Exercise #1
"Exercise 1"
31622400
(* 2 15811200)
(* 2 (/ 31622400 2))

; Exercise #2
"Exercise 2"
(cond
  [(> (/ 100 3) (/ (+ 100 3) (+ 3 3))) true]
  [else false])

; Exercise #3
; f->c : Number -> Number
; GIVEN: a temperature in degrees Fahrenheit as an argument
; RETURNS: the equivalent temperature in degrees Celsius.
; Examples:
; (f->c 32)  => 0
; (f->c 100) => 37.77777777777778
"Exercise 3"
(define (f->c f)
  (* (- f 32) (/ 5 9)))

(f->c 32)
(f->c 100)
(f->c 67)
(f->c 90)

; Exercise 4
; tip : NonNegNumber Number[0.0,1.0] -> Number
; GIVEN: the amount of the bill in dollars and the
; percentage of tip
; RETURNS: the amount of the tip in dollars.
; Examples:
; (tip 10 0.15)  => 1.5
; (tip 20 0.17)  => 3.4
"Exercise 4"
(define (tip bill gratuity)
  (* bill gratuity))

(tip 10 0.15)
(tip 20 0.17)
(tip 45 0.18)
(tip 05 0.10)

; Exercise 5
; sq : Number -> Number
; GIVEN: a number
; RETURNS: the square of the given number
; Examples:
; (sq 5) => 25
; (sq 11) => 121
"Exercise 5"
(define (sq x)
  (* x x))

(sq 5)
(sq 11)

; Exercise 6
; quadratic-root : Number Number Numer -> Number
; GIVEN: The a, b and c of a quadratic equation
; RETURNS: The positive root of the corresponding
; quadratic equation
; Examples:
; (quadratic-root 1 3 -4) => 1
; (quadratic-root 5 10 -15) => 1
; (quadratic-root 5 10 -10) => 0.73205...
"Exercise 6"
(define (quadratic-root a b c)
  (/ (+ (- b) (sqrt (- (sq b) (* 4 a c))))
     (+ a a)))

(quadratic-root 1 3 -4)
(quadratic-root 5 10 -15)
(quadratic-root 5 10 -10)