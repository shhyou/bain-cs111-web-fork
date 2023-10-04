;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname exercise_2_v7) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
(require "./iterated-images.rkt")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Question 1: Using iterated-overlay
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Part (a): using overlay
(define question-1a
  "fill me in")

(check-expect question-1a .)

;; Part (b): using iterated-overlay
(define question-1b
  "fill me in")

(check-expect question-1b .)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Question 2: Using iterated-beside
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define question-2
  "fill me in")

(check-expect question-2 .)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Question 3: A Simple Flower
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define question-3
  "fill me in")

(check-expect question-3 .)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Question 4: A Colorful Flower
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define question-4
  "fill me in")

(check-expect question-4 .)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Question 5: A Fancy Flower
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define question-5
  "fill me in")

(check-expect question-5 .)

;; Use this to test your colors.
;; Remember, your final answer must pass the previous test, so you should
;; only use the image below as a temporary aid.

;; (define q5-colors .)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Question 6: Paint Chips
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; palette : color color number -> image
;; purpose: return a row of n (given by the number argument)
;; 50x50 squares where the colors of the squares interpolate
;; between the two color arguments
(define palette
  (λ (color1 color2 num-squares)
    "fill me in"))

(check-expect (palette (color 86 180 233) (color 213 94 0) 5)
              .)
(check-expect (palette (color 0 0 0) (color 255 255 255) 2)
              .)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Question 7: Paint Grids
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; palette-grid : color color number number -> image
;; purpose: return a grid with the given number of rows and columns
;; where each row interpolates between the two color arguments and
;; each column interpolates between the color of the top square and
;; black (color 0 0 0) (see the assignment for more detail if this is confusing)
;; NOTE: you MUST use your palette function from the previous step
(define palette-grid
  (λ (color1 color2 num-rows num-cols)
    "fill me in"))

(check-expect (palette-grid (color 86 180 233) (color 213 94 0) 5 5)
              .)

(check-expect (palette-grid (color 204 121 167) (color 0 158 115) 4 3)
              .)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Question 8: Bullseye Revisited
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; signature: fill this out
;; purpose: fill this out
(define bullseye/simple
  (λ (num-rings radius clr)
    "fill me in"))

(check-expect (bullseye/simple 5 50 "purple") question-1b)
(check-expect (bullseye/simple 5 50 "purple") question-1a)

; You must turn these images into test cases, using the information above the image

; 20 rings, radius of 100, line color - (color 86 180 233)
; .

; 3 rings, radius of 75, line color - (color 204 121 167)
; .

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Question 9: Colorful Bullseye
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; signature: fill this out
;; purpose: fill this out
(define bullseye/color
  (λ (num-rings radius inner-color outer-color)
    "fill me in"))

; turn the below images into test cases
; NOTE THE ORDER OF THE ARGUMENTS!
; 6 rings, radius 50, inner color (color 0 158 115), outer color (color 204 121 167)
; .

; 4 rings, radius 75, inner color (color 213 94 0), outer color (color 86 180 233)
; .