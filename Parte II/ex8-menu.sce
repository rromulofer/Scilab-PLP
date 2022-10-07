// Prof. Ausberto S. Castro Vera
// UENF-CCT-LCMAT-Ciencia da Computacao
//  Outubro, 2022
//
// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
//
// ======> Assunto:  SELECT-CASE ==================

clear; clc;
mprintf("\n UENF-CCT-LCMAT-Ciencia da Computacao\n");
printf(" Aluno: Rômulo Souza Fernandes - Campos %s", date());

printf('\n\n');
n1 = input('digite o primeiro número:');
n2 = input('digite próximo número:');

opcao = 1;
printf('\n\n');
while (opcao > 0)
   opcao = input('   Digite a opção desejada 1-soma 2-subtração 3-produto 4-divisão enter-sair:  ');
   select  opcao
       case 1 then
           mprintf('Soma: %d + %d = %d', n1, n2, n1+n2,'\n');
       case 2  then
          mprintf('Subtração: %d - %d = %d', n1, n2, n1-n2,'\n');       
       case 3  then
          mprintf('Produto: %d * %d = %d', n1, n2, n1*n2,'\n');        
       case 4  then
          mprintf('Divisão: %d / %d = %d', n1, n2, n1/n2,'\n') ;
       else
          break
   end;   //   select
   
end ;    //  while
