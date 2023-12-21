;;*Seguindo o livro "Rocket programing" James W. Stelly
#lang racket


;;TODO DECLARAÇÃO DE LISTAS
;; Uma lista é uma sequencia de Atoms separados por espaços

(quote (3 1 4 pi))
;;*ou
'(3 1 4 pi)
;;? Printa   '(3 1 4 pi)  

(list 3 1 4 pi)
;;? Printa   '(3 1 4 3.141592653589793)

;;TODO FUNÇÕES ÚTEIS DE LISTAS

;;* list-ref (list-ref '(50 70 25 46) 2 ) retorna o elemento na posição 2 da lista (25)
(list-ref (cons 50 (cons 70 (cons 25 null) ) ) 2) ;;Teste se estou entendendo

;;? length (length '(50 70 25 46)) retorna o tamanho da lista (4)
;;*        (length '() ) retorna 0


;;? reverse (reverse '(50 70 25 46)) retorna a lista invertida (46 25 70 50)

;;? sort (sort '( 50 70 25 46 )  ) retorna a lista ordenada ( 25 46 50 70 )
;;* ou   (sort '( 50 70 25 46 ) <) retorna a lista ordenada ( 25 46 50 70 )
;;* ou   (sort '( 50 70 25 46 ) >) retorna a lista ordenada ( 70 50 46 25 )

;;? append (append '( 50 70 25 46 ) '( 1  2 )) retorna a lista concatenada ( 50 70 25 46  1  2  3  4)
;;* ou  (append '( 50 70 25 46) '( 1 2 ) '( 3 4 )) retorna a lista concatenada ( 50 70 25 46 1 2 3 4)
;;! apenas aceita 2 ou mais listas

;;? range (range start end step) retorna uma lista de start até end com step de diferença
;;*       (range 1 10) retorna a lista (1 2 3 4 5 6 7 8 9 10) step é assumidamente 1
;;*       (range 1 10 2) retorna a lista (1 3 5 7 9) step pode ser qualquer numero
;;*       (range 10 1 -1) retorna a lista (10 9 8 7 6 5 4 3 2 1) step pode ser negativo 
;;*   (e o start so pode ser maior que o end se o step for negativo)      (mas não pode ser 0) 

;;? make-list (make-list n) retorna uma lista de n elementos iguais a null
;;*           (make-list 5) retorna a lista (null null null null null)
;;*           (make-list 5 1) retorna a lista (1 1 1 1 1)
;;*           (make-list 5 'a) retorna a lista (a a a a a)

;;? null? (null? '(1 2 3)) retorna #f
;;*       (null? '()) retorna #t

;;? index-of (index-of '(1 2 3 4 5) 3) retorna o index do elemento 3 na lista (2)
;;*          (index-of '(1 2 3 4 5) 6) retorna #f

;;? member (member 3 '(1 2 3 4 5)) retorna uma lista com os elementos a partir do elemento 3 (3 4 5)
;;*        (member 6 '(1 2 3 4 5)) retorna retorna #f
;;*        (member 6 '(9 3 5 (6 2) 5 1 4) retorna #f
;;*        (member '(6 2) '(9 3 5 (6 2) 5 1 4) retorna '((6 2) 5 1 4)