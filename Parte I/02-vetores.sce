// Prof. Ausberto S. Castro Vera
// UENF-CCT-LCMAT-Ciencia da Computacao
//  Outubro, 2022
//
// Para executar desde o editor SciNotes:   < Ctrl >< L >
//
// ======> Assunto:  VETORES ==================

clc; clear;      
mprintf('\n UENF-CCT-LCMAT-Ciencia da Computacao\n');
printf(" Aluno: Rômulo Souza Fernandes - Campos %s\n\n", date());

v1 = 3:10 
v2 = 23:2:31
v3 = 1.2:0.2:2.2


soma = v1(3) + v3(5)
produto=  v2(4)*v1(2) + v3(3)*v1(5)

printf("Vetor04 = ")
for k = 7:4:31
    printf("%d ",k)
end
Vetor04 = 7:4:31
printf("\n\n")
Vetor05 = 12:3:45
printf("Vetor05: ",Vetor05)
for k = 12:3:45
    printf("%d ",k)
end
x=input(" Qual e´ o elemento do Vetor04, que deseja ver? : ")
printf("O elemento solicitado : %d",Vetor04( evstr(x) ))

