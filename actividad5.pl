
%1.Calculo de area y perimetro

area(B, H, Resultado) :-
   Resultado is B * H.

perimetro(B, H, Resultado) :-
   Resultado is 2 * B + 2 * H.

% 2. Numero par o impar

par_o_impar(Num) :-
   ( Num mod 2 =:= 0
      -> write("Es par")
   ; write("Es impar")
).

% 3. Tabla de multiplicar

tabla_multiplicar(Num) :-
   tabla_multiplicar(Num, 1).

tabla_multiplicar(Num, A) :-
   ( A > 10
      -> fail;
   Resultado is Num * A,
   write(Resultado), nl,
   NuevoA is A + 1,
   tabla_multiplicar(Num, NuevoA)
   ).
%4.
maximo(A, B, Resultado) :-
    Resultado is max(A, B).

%5.
categoria_edad(A) :-
    (   A > 18
    ->  write('Es mayor de edad')
    ;   write('No es mayor de edad')
    ).

%6.
aprobo(Nota) :-
    (Nota >= 6 ->
        write('Aprobado con nota: '), write(Nota)
    ;
        write('Reprobado con nota: '), write(Nota)
    ).

%7. 
padre(juan, oscar).
padre(juan, kattia).
padre(carlos, gaby).
padre(carlos, fabio).

% son hermanos? 
es_hermano(X, Y) :-
    X \= Y,
    padre(P, X),
    padre(P, Y).

%8. Comparacion estricta
%Uso de =
unificacion :-
    X = 5,
    write('X se unificó con: '), write(X), nl.
%Uso de ==
igualdad_estricta :-
    X = 3 + 2,
   (X == 3 + 2 -> write('Son exactamente iguales.') ; write('No son exactamente iguales.')), nl.
%Uso de ==\
desigualdad_estricta :-
     X = 3 + 2,
    (X \== 5 -> write('Son diferentes.') ; write('Son iguales.')), nl.


%9. 
equipo(alianza, azul).
equipo(aguila, negro).
equipo(fas, rojo).
equipo(platense, amarillo).

color_equipo(Color) :-
   equipo(Equipo, Color),
   write(Equipo).


%10. 
distancia(X1, Y1, X2, Y2, D) :-
    D is sqrt((X2 - X1)^2 + (Y2 - Y1)^2).

%11.
grados_a_radianes(G, Resultado):-
    Resultado is G * pi/180.

calculadora(suma, X, Y, R) :- R is X + Y.
calculadora(resta, X, Y, R) :- R is X - Y.
calculadora(multiplicacion, X, Y, R) :- R is X * Y.
calculadora(division, X, Y, R) :- Y =\= 0, R is X / Y.