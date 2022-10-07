// Prof. Ausberto S. Castro Vera
// UENF-CCT-LCMAT-Ciencia da Computacao
//  Outubro, 2022
//
// Para executar desde o editor SciNotes:   < Ctrl >< E >
//
// ======> Assunto:  MATRIZES ==================

clc; clear;      
mprintf('UENF - Ciencia da Computacao\n');
printf("Aluno: Rômulo Souza Fernandes - Campos %s ", date());

m1 = [1 2 3; 4 5 6; 7 8 9]
m2 = [ 3 5; 6 9]
m3 = zeros(2,2)
m4 = ones(2,2)
m5 = [m2 m3; m4 m2]   // matriz de matrizes
m6 = eye(m5)          // matriz identidade
m7 = eye(3,3)
d = det(m5)          // determinante de m5
inversa = inv(m5)    // matriz inversa
m5(1,4) = 12
m8 = rand(2,3)       // matriz randomica 2x3
m9 = m5'             // matriz transposta

a = [1 2 3; 4 5 6; 7 8 9]
m1 = [1 2 3; 4 5 6; 7 8 9]
X = inv(a)*m1

a = [1 2 ; 2 3] 
b = [5 ; 8]

t = inv(a)
z = t * b



