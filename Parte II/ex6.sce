// Prof. Ausberto S. Castro Vera
//  Outubro, 2022
//
// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
//
// ======> Assunto:  Programacao: WHILE 

clear; clc;
mprintf("UENF - Ciencia da Computacao\n");
printf(" Aluno: Rômulo Souza Fernandes - Campos %s\n\n", date());

limite= input('Digite o limite para a contage: ')
soma = 0
i = 0
while i<= limite
    soma = soma + i;
    i = i+1; 
end;

printf("O número inteiro positivo menor ou igual ao limite digitado foi: %d",i-1)
