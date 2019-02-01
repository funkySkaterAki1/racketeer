;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |4|) (read-case-sensitive #t) (teachpacks ((lib "convert.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.ss" "teachpack" "htdp")))))
(define (area-of-disk r) 
  (* 3.14 (* r r)))

(area-of-disk 5)

(define (area-of-ring outer inner) 
  (- (area-of-disk outer)
     (area-of-disk inner)))

(area-of-ring 5 3)

;;ex 2.2.1
(define (fahrenheit-to-celsius f)
  (* (- f 32) 5/9))

#;(convert-gui fahrenheit-to-celsius)

#;(convert-repl fahrenheit-to-celsius)

(convert-file "in.dat" fahrenheit-to-celsius "out.dat")

;;; dollar to euro

(define (dollar-to-euro d)
  (* d 0.87))

(dollar-to-euro 890)

(define (area-of-triangle b h)
  (/ (* b h) 2))


(area-of-triangle 10 20)


(define (convert3 a b c)
  (+ a (* b 10) (* c 100) ) ) 

(convert3 8 5 1)


(define (nsqr-plus-ten n)
  (+ 10 (sqr n)) )

(nsqr-plus-ten 2)

(define (half-times-nsqr-plus-20 n)
  (* (/ 1 2) (+ 20 (sqr n))) )

(half-times-nsqr-plus-20 9)

(define (two-minus-one-over-n n)
  (- 2 (/ 1 n))  )
(two-minus-one-over-n 2)


;; tax on gross pay, program: tax
(define (tax income rate)
  (* income rate))

(define (netpay income rate)
  (- income (* income rate)))

(tax 12000 0.12)
(netpay 12000 0.12)