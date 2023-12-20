;;*Seguindo o livro "Rocket programing" James W. Stelly
#lang racket

#|


;;TODO NOMECLAUTURA 

;;? Atoms: Forma de dados indiviseis, a forma mais basica de dados
;;* Exemplos: 3, 1, 4, pi, "spud", 'spud, #t, #f, '(), '


;;TODO LISTAS
;; Uma lista é uma sequencia de Atoms separados por espaços

(quote (3 1 4 pi))
'(3 1 4 pi)
;;? Prints   '(3 1 4 pi)  

(list 3 1 4 pi)
;;? Prints   '(3 1 4 3.141592653589793)


;;TODO S-EXPRESSIONS
;;* Case 1: The s-expression is an atom.
;;* Case 2(pair): The s-expression is expression of the form (x . y) where x and y are other s-expressions. 
;;*                cada um desses pares é chamado de um cons cell


;;!Example of case 2 
;;* No caso 2 a S-expression pode ser interpretada como uma binary tree
;;?Ex:
(define a 5)
(define x 7)
(cons a ( ( 2  pi )  x ) )
;;Pode ser interpretado como Figure 1-1

;;!Listas como S-Expressions
;;* Uma lista pode ser interpretada como uma arvore binaria sendo que
;;* A lista a lista (a b c d) pode ser interpretada como ( a . ( b . ( c . ( d . nil )))) 
;;* o nil é um atom especial que representa o fim da lista, tambem pode ser representado como '() ou null
;;? O primeiro elemento de uma S-expression é chamado de car e o segundo é chamado de cdr
;;? Ex:
(car '(a b c d)) ;;? a
(cdr '(a b c d)) ;;? (b c d)

;;Ou seja qualquer lista pode ser interpretada como uma S-expression (x . y) 
;;onde x é o primeiro elemento da lista e y é o resto da lista
;;? X = car e Y = cdr

(pair? (cons 1 2))
;;#t
(list? (cons 1 2))
;;#f
(pair? (cons 1 '()))
;;#t
(list? (cons 1 '()))
;;#t
;;!Em suma: tudo são pairs, e listas são pairs onde o ultimo cdr é null ou nil ou '()
|#

;;TODO LIST FUNCTIONS

;;* list-ref (list-ref '(50 70 25 46) 2 ) retorna o elemento na posição 2 da lista (25)
(list-ref (cons 50 (cons 70 (cons 25 null) ) ) 2) ;;Teste se estou entendendo

;;* length (length '(50 70 25 46)) retorna o tamanho da lista (4)

;;* reverse (reverse '(50 70 25 46)) retorna a lista invertida (46 25 70 50)

;;* sort (sort '( 50 70 25 46 )  ) retorna a lista ordenada ( 25 46 50 70 )
;;* ou   (sort '( 50 70 25 46 ) <) retorna a lista ordenada ( 25 46 50 70 )
;;* ou   (sort '( 50 70 25 46 ) >) retorna a lista ordenada ( 70 50 46 25 )
;;! a ordenação crescente é default e implicita

;;* append (append '( 50 70 25 46 ) '( 1  2 )) retorna a lista concatenada ( 50 70 25 46  1  2  3  4)
;;* ou  (append '( 50 70 25 46) '( 1 2 ) '( 3 4 )) retorna a lista concatenada ( 50 70 25 46 1 2 3 4)
;;! apenas aceita 2 ou mais listas

;;range (range 1 10) retorna a lista (1 2 3 4 5 6 7 8 9 10)