// Prof. Ausberto S. Castro Vera
// UENF-CCT-LCMAT-Ciencia da Computacao
// Outubro 2022
//
// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
//
// ======> Assunto: Programacao: Formulario de Entrada de dados ==================

clear; clc;
Aluno = 'Rômulo Souza Fernandes';  // <============ Nome do aluno


txt=['Produto 1';'Produto 2';'Produto 3 ' ;'Produto 4 ';'Produto 5 '; 'Produto 6']; 
notas=x_mdialog([Aluno;'Digitar o valor do produto:'],txt,['5';'22';'7';'14';'36';'2']); 

n1=evstr(notas(1));   // strings convertidos em numeros
n2=evstr(notas(2)); 
n3=evstr(notas(3)); 
n4=evstr(notas(4)); 
n5=evstr(notas(5)); 
n6=evstr(notas(6)); 

media = sum([n1,n2,n3,n4,n5,n6]);  // calcula a soma

messagebox('Valor total da compra: '+string(media), "UENF - "+Aluno);
