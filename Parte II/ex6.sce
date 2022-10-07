// Prof. Ausberto S. Castro Vera
//  Outubro, 2022
//
// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
//
// ======> Assunto:  Programacao: WHILE 

clear; clc;
mprintf("UENF - Ciencia da Computacao\n");
printf(" Aluno: Rômulo Souza Fernandes - Campos %s\n\n", date());

n=0;
x=0;
soma=0;
while (x > 0)
   x=input('Digite um numero entre 1 e 50 (0 para terminar): '); 
   soma=soma + x;
   n=n+1;
end;   

printf("\n A soma dos %d valores ingressados  = %d\n",n-1,soma)
