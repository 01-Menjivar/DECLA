% Personas presentes
persona(alice).
persona(robert).
persona(clara).
persona(james).


% Relaciones
esposo(alice, lord_henry).
sobrina(clara, lord_henry).
socio(james, lord_henry).
empleado(robert, lord_henry).

% Motivos (quién podría tener razones)
motivo(alice, herencia).
motivo(robert, maltrato).
motivo(clara, deuda).
motivo(james, negocios).

% Medios (quién tuvo acceso al arma)
acceso(alice, veneno).
acceso(robert, cuchillo).
acceso(clara, cuerda).
acceso(james, pistola).

% Oportunidad (quién estuvo en la biblioteca)
estuvo(alice, sala).
estuvo(robert, cocina).
estuvo(clara, biblioteca).
estuvo(james, estudio).


% 2.
tienemotivo(Persona) :- motivo(Persona, X).

% 3.
estuvobiblioteca(X) :- estuvo(X, biblioteca).

% 4.
situacion(X) :- motivo(X, _), estuvo(X, biblioteca).

% 5.
arma(X) :- acceso(Y, cuerda).

% 6.
asesino(X) :- tienemotivo(X), estuvobiblioteca(X), arma(X).