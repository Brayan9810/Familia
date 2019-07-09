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

padre_De('Hector','Stella').
padre_De('Hector','Gladys').
padre_De('Hector','Lucrecia').

#tercera y cuarta generacion

padre_De('Maria','Raquel').
padre_De('Arquimedez','Raquel').

padre_De('Josefa','Hector').
padre_De('Gustavo','Hector').

padre_De('Bonifacia','Blanca').
padre_De('Benigno','Blanca').

padre_De('Felicia','Jose').
padre_De('Cristobal','Jose').


abuelo(X,Y):- padre_De(X,Z),padre_De(Z,Y).

hermano(X,Y):-padre_De(Z,X),padre_de(Z,Y).

tio(X,Y):- padre_De(Z,Y), hermano(Z.Y).

primo(X,Y):- padre_De(Z,X),padre_De(W,Y),hermano(Z,W).

casado(X,Y):- padre_De(X,Z),padre_De(Y,Z),X\=Y.

tioDe(A,B):- hermanoDe(A,C),padreDe(C,B).

sobrinoDe(A,B):- tioDe(B,A).

primoDe(A,B):- padreDe(C,A), padreDe(D,B),hermanoDe(C,D).

feliz(X,Y):- padre_De(A,_).

