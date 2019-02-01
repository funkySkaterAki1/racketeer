#lang racket
(struct bot (name type age))
(define nanny-bot
  (bot "nana" "helper" 1))
nanny-bot
(bot-name nanny-bot)


(append '(1 2) '(3))

(list->set '(1 2 3 1 2 3 3 2 1 3 2 1))


;; Create an immutable hash table (mutable example below)
(define m (hash 'a 1 'b 2 'c 3))

;; Retrieve a value
(hash-ref m 'c) ; => 1

m

(λ () "Hello World") 

(define hello-world (lambda () "Hello World"))
(hello-world) ; => "Hello World"

;; You can shorten this using the function definition syntactic sugar:
(define (hello-world2) "Hello World")
(hello-world2)


(define (hello2 name)
  (string-append "Hello " name))
(hello2 "aden")

;; Looping can be done through (tail-) recursion
(define (loop i)
  (when (< i 10)
    (printf "i=~a\n" i)
    (loop (add1 i))))
(loop 5) ; => i=5, i=6, ...


(for ([i (in-list '(l i s t))])
  (displayln i))

(for ([i (in-vector #(v e c t o r))])
  (displayln i))

(for ([i (in-string "string")])
  (displayln i))

(for ([i (in-set (set 'x 'y 'z))])
  (displayln i))

(for ([(k v) (in-hash (hash 'a 1 'b 2 'c 3 ))])
  (printf "key:~a value:~a\n" k v))

(for/list ([i '(1 2 3)])
  (add1 i)) ; => '(2 3 4)

;; To catch exceptions, use the `with-handlers' form
(with-handlers ([exn:fail? (lambda (exn) 999)])
  (+ 1 "2")) ; => 999
(with-handlers ([exn:break? (lambda (exn) "no time")])
  (sleep 3)
  "phew") ; => "phew", but if you break it => "no time"

;; Use `raise' to throw exceptions or any other value
(with-handlers ([number?    ; catch numeric values raised
                 identity]) ; return them as plain values
  (+ 1 (raise 2))) ; => 2

(define m3 (make-hash))
(hash-set! m3 'a 1)
(hash-set! m3 'b 2)
(hash-set! m3 'c 3)
(hash-ref m3 'a)   ; => 1
(hash-ref m3 'd 0) ; => 0
(hash-remove! m3 'a)

(module bank-account racket
  (provide (contract-out
            [deposit (-> positive? any)] ; amounts are always positive
            [balance (-> positive?)]))

  (define amount 0)
  (define (deposit a) (set! amount (+ amount a)))
  (define (balance) amount)
  )

(require 'bank-account)
(deposit 5)

(balance) ; => 5


