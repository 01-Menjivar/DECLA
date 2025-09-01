
estudiante(kelvin).
estudiante(raul).
estudiante(flores).
estudiante(mauricio).
estudiante(melisa).

% Determinar si "Ellacuria" no es estudiante.
no_es_estudiante(Nombre) :-
   \+ estudiante(Nombre).

% Con corte obtener el primer estudiante de la lista.
primer_estudiante(X) :-
   estudiante(X) , !.

% Con fallo lista todos los estudiantes.
listar_estudiantes :-
   estudiante(X),
   write("Estudiante:"), write(X),
   nl, fail.
   
listar_estudiantes.

% Pedir al usuario un dato y verificar si es estudiante.
verificar_estudiante :-
    write('Ingrese un nombre: '), read(Nombre),
    (   estudiante(Nombre)
    ->  write('Sí es estudiante')
    ;   write('No es estudiante')
    ).


