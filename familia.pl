% Padre(Padre, Hijo)
% Madre(Madre, Hijo)
% Casado_con(Persona1, Persona2)

casado_con(ernesto, teresa).
casado_con(teresa, ernesto).

padre(ernesto, carlos).
padre(ernesto, ana).
padre(ernesto, lucia).

madre(teresa, carlos).
madre(teresa, ana).
madre(teresa, lucia).


casado_con(carlos, sofia).
casado_con(sofia, carlos).

padre(carlos, mateo).
padre(carlos, valeria).
madre(sofia, mateo).
madre(sofia, valeria).


madre(ana, andres).


casado_con(ricardo, laura).
casado_con(laura, ricado).

padre(ricardo, daniel).
madre(laura, daniel).

casado_con(miguel, rosa).
casado_con(rosa, miguel).

padre(miguel, fernanda).
madre(rosa, fernanda).

padre(felipe, joaquin).


hijo(carlos, ernesto).
hijo(ana, ernesto).
hijo(lucia, ernesto).

hijo(mateo, carlos).
hijo(valeria, carlos).

hijo(andres, ana).
hijo(daniel, ricardo).
hijo(fernanda, miguel).
hijo(joaquin, felipe).

amigo(carlos, ricardo).
amigo(ricardo, carlos).

amigo(mateo, daniel).
amigo(daniel, mateo).

amigo(teresa, carmen).
amigo(carmen, teresa).

amigo(andres, joaquin).
amigo(joaquin, andres).

amigo(fernanda, isabel).
amigo(isabel, fernanda).

primo(andres, fernanda).
primo(fernanda, andres).

primo(mateo, fernanda).
primo(fernanda, mateo).

primo(valeria, fernanda).
primo(fernanda, valeria).

primo(lucia, daniel).


%vive_en(Persona,Lugar)
%trabaja_en(Persona,Profesion)


vive_en(ernesto, valle_verde).
vive_en(teresa, valle_verde).
vive_en(ana, valle_verde).
vive_en(miguel, valle_verde).
vive_en(rosa, valle_verde).
vive_en(carmen, valle_verde).
vive_en(isabel, valle_verde).

vive_en(carlos,ciudad).
vive_en(sofia, ciudad).
vive_en(felipe,ciudad).

trabaja_en(ernesto, maestro_de_primaria).
trabaja_en(teresa, enfermera).
trabaja_en(carlos,ingeniero_civil).
trabaja_en(sofia,arquitecta).
trabaja_en(ana, profesora_de_matematicas).
trabaja_en(ricardo, abogado).
trabaja_en(laura, bibliotecaria).
trabaja_en(miguel, agricultor).
trabaja_en(rosa, administradora).
trabaja_en(carmen, partera).
trabaja_en(felipe,comerciante).

%Reglas
abuelo_de(X,Y) :- padre(X,Z), padre(Z,Y).

hermano_de(X,Y):- padre(Z,X), padre(Z,Y).

tio_de(X,Y):- padre(Y,Z); madre(Y,Z),hermano_de(X,Z).



% amigo_de_primo(X, Y) :- 


%consultas 

% 1.
?- hijo(X, ernesto).
X = carlos ;
X = ana ;
X = lucia.

% 2.
?- abuelo_de(X, mateo).
X = ernesto

%5.
?- amigo(mateo, daniel).


%6.
?- primo(andres, fernanda).