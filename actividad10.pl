%Guía de Ejercicios – Programación Simbólica en Prolog

%1.
?- simplifica(*(1, +(0, X)), R).

%2.
?- simplifica(*(0, +(X, 3)), R).

%3.
?- simplifica(+(X, 0), R).

%4.
?- simplifica(*(1, +(X, 0)), R).

%5.
?- derivada(x*x + 3*x + 2, x, D).

%6.
?- derivada(x*x*x, x, D).

%7.
?- derivada(x*x - 4*x + 1, x, D).

%8.
?- derivada(2*x*x + 5*x + 7, x, D).

%9.
?- evalua(x*x + 3*x + 2, x, 3, R).

%10.
?- evalua(x*x - 4*x + 4, x, 2, R).

%11.
?- derivada(x*x + 3*x + 2, x, D), evalua(D, x, 2, R).

%12.
?- suma(frac(1,2), frac(1,3), R).

%13.
?- suma(frac(2,5), frac(3,10), R).

%14.
resta(frac(A,B), frac(C,D), frac(N,M)) :-
    N is A*D - C*B,
    M is B*D.

%15.
?- resuelve(x + 3 = 7, x, V).

%16.
?- resuelve(5 + x = 10, x, V).

%17.
?- resuelve(x + 8 = 20, x, V).


%Resultados xd
% 1. R = X.
% 2. R = 0.
% 3. R = X.
% 4. R = X.
% 5. D = x*1 + x*1 + 3*1 + 0.
% 6. D = x*x*1 + x*x*1 + x*x*1.
% 7. D = x*1 + x*1 - (4*1 + 0).
% 8. D = 2*(x*1 + x*1) + 5*1 + 0.
% 9. R = 20.
% 10. R = 0.
% 11. D = x*1 + x*1 + 3*1 + 0, R = 7.
% 12. R = frac(5,6).
% 13. R = frac(25,50).
% 14. R = frac(2,8).
% 15. V = 4.
% 16. V = 5.
% 17. V = 12.


