// Prof. Ausberto S. Castro Vera
// UENF-CCT-LCMAT-Ciencia da Computacao
// Outubro 2022 
//
// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
//
// ======> Assunto: GRAFICOS IV ==================
clear; clc; clf();
Aluno = 'Rômulo Souza Fernandes';  // <============ Nome do aluno

// propriedades da figura: NÃO alterar !!
dt=getdate(); dd= ' ('+string(dt(7)) + ':'+string(dt(8))+')' ;
// propriedades da figura
f=gcf();
f.figure_name='UENF - CCT - LCMAT - CC - 2022 - '+ Aluno + dd;  

x = -2*%pi:0.1:2*%pi;    
y1 = 2*(x^2)+ 5 * x - 3;
y2 = (x^3)+3*x+1;
y3 = x^3-5*x^2-4*x+20;;

 
subplot(221)  // 221 =matriz 2x2 sub-grafico 1
plot(x,y1,'r');
// propriedades dos eixos
da1=gca(); // 
da1.title.font_size = 5;
da1.title.font_foreground = 5;    // 5=vermelho
da1.title.text="x^2";
da1.x_label.text="Tempo"; 
da1.x_location='middle'; 
da1.y_label.text="x^2"; 


subplot(221)  // 222 =matriz 2x2 sub-grafico 2
plot(x,y2);
// propriedades dos eixos
da2=gca(); // 
da2.title.font_size = 5;
da2.title.font_foreground = 3;    // 3=verde
da2.title.text="x^3";
da2.x_label.text="Tempo"; 
da2.x_location='middle'; 
da2.y_label.text="x^3"; 


subplot(221)  // 223 =matriz 2x2 sub-grafico 3
plot(x,y3,'g');
// propriedades dos eixos
da3=gca(); // 
da3.title.font_size = 5;
da3.title.font_foreground = 12;    // 12=azul
da3.title.text="x^4";
da3.x_label.text="Tempo"; 
da3.x_location='middle'; 
da3.y_label.text="x^4"; 

subplot(221)  // 224 =matriz 2x2 sub-grafico 4

da4=gca(); // 
da4=gca(); // 
da4.title.font_size = 5;  // tamanho da fonte
da4.title.font_foreground = 2;    // 2=azul
da4.title.text=Aluno;
