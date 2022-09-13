
;; calculator
;; <add a description here>

;; constants
;;

;; data maps and vars
;;
(define-map counters principal uint)
;;(define-data-var a uint u0)

;; private functions
;;
(define-read-only (get-count (who principal))
    (default-to u0 (map-get? counters who))
)

(define-read-only (plus (a int) (b int))
    (print (+ a b))
)

(define-read-only (minus (a int) (b int))
    (print (- a b))
)

(define-read-only (times (a int) (b int))
    (print (* a b))
)

(define-read-only (divide (a int) (b int))
    (print (/ a b))
)

;; public functions
;;

;; just to test as a public function
;; add
;;
(define-public (add (a int) (b int))
    (ok  (+ a b))
)