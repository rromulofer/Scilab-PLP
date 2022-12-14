// Prof. Ausberto S. Castro Vera
// UENF-CCT-LCMAT-Ciencia da Computacao
//  Setembro, 2022
//
// Para executar desde o editor SciNotes:   < Ctrl >< E >
//
// ======> Assunto: Polinomios ==================

clc; clear;      
mprintf("UENF - Ciencia da Computacao\n");
printf("Aluno: Rômulo Souza Fernandes - Campos% s", date());

polinomio = poly([3 -4 1],'x') 

p = poly([1 3],'x')   // polinomio em x com duas raizes p(x)=(x-1)(x-3)      
q = poly([2 -1 0],'s')  //  q(s) = (s-2)(s+1)s   ; tres raizes 2,-1,0
t= poly([0 2 3 4],'x','c') // polinomio com coeficientes 2, 3 e 4

raizesq = roots(q)    // raizes do polinomio q

p = poly([-7 2 0 5],'t','c') // polinomio com coeficientes 2, 3 e 4

disp("Execução terminada...");
