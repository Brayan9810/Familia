#primera y segunda generacion

padre_De('Jesus','Brayan').
padre_De('Maria','Brayan').

padre_De('Jesus','Liliana').
padre_De('Maria','Liliana').

padre_De('Jesus','Karen').
padre_De('Maria','Karen').

padre_De('Jesus','Daniel').
padre_De('Maria','Daniel').

padre_De('Stella','Angelica').
padre_De('Jose','Angelica').

padre_De('Stella','Fabian').
padre_De('Jose','Fabian').

#segunda y tercera generacion

padre_De('Blanca','Jesus').
padre_De('Blanca','Ramon').
padre_De('Blanca','Floralba').

padre_De('Jose','Jesus').
padre_De('Jose','Ramon').
padre_De('Jose','Floralba').

padre_De('Raquel','Stella').
padre_De('Raquel','Gladys').
padre_De('Raquel','Lucrecia').

padre_De('l','Stella').
padre_De('l','Gladys').
padre_De('l','Lucrecia').

#tercera y cuarta generacion

padre_De('','Raquel').
padre_De('','Raquel').

padre_De('','l').
padre_De('','l').

padre_De('','Blanca').
padre_De('','Blanca').

padre_De('','Jose').
padre_De('','Jose').


abuelo(X,Y):- padre_De(X,Z),padre_De(Z,Y).

hermano(X,Y):-padre_De(Z,X),padre_de(Z,Y).

tio(X,Y):- padre_De(Z,Y), hermano(Z.Y).

primo(X,Y):- padre_De(Z,X),padre_De(W,Y),hermano(Z,W).

casado(X,Y):- padre_De(X,Z),padre_De(Y,Z),X\=Y.

feliz(X,Y):- \+ is a.

