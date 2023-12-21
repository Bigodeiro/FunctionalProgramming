;;*Seguindo o livro "Rocket programing" James W. Stelly
#lang racket

;;TODO NOMECLAUTURA 

;;? Atoms: Forma de dados indiviseis, a forma mais basica de dados
;;* Exemplos: 3, 1, 4, pi, "spud", 'spud, #t, #f, '(), '



;;TODO S-EXPRESSIONS
;;* Case 1: A s-expression é um atom.
;;* Case 2(pair): A s-expression é uma expressão da forma (x . y) onde x e y são outras s-expressions 
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