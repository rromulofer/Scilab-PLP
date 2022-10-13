// Prof. Ausberto S. Castro Vera
// UENF-CCT-LCMAT-Ciencia da Computacao
// Outubro 2022 
//
// Adaptado de:    http://fileexchange.scilab.org/toolboxes/132000
//                 Version 1.0
//                 Author(s) Jean-Luc GOUDIER
//                 5th of March 2011 
//
// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
//
// ======> Assunto:  GUI   UIControl
clear; clc;
Aluno = 'Rômulo Souza Fernandes';
//------------------------------------------------------------

function ASCV_Sobre()
	msg = msprintf(gettext(" Interface Adaptada na UENF (CCT - LCMAT - CC)"..
                          +"\nAutor: Prof. Ausberto S. Castro Vera,"..
                          +"\nCopyright (C) 2008-2022 ASCV-UENF "));
	messagebox(msg, gettext("Autor"), "info", "modal");
endfunction
//----------------------------------------------------------------------------
// definições On-line de funções
  deff('y=myf(A,B,C,D,x)',['y=A*x^3+B*x^2+C*x+D']);  // função de terceiro grau
  deff('dy=dyf(A,B,C,D,x)',['dy=3*A*x^2+2*B*x+C']);  // função derivada

  h0=gcf();
  h0.backgroundcolor= [0.2 0.2 0.2];
  h0.figure_size= [480,700];
  h0.figure_position = [45,68];
  h0.figure_name="UENF - Valores dos coeficientes de "+"Ax3+Bx2+Cx+D";

  // Remove menus originais do Scilab
    delmenu(h0.figure_id,gettext("&File"));
    delmenu(h0.figure_id,gettext("&Tools"));
    delmenu(h0.figure_id,gettext("&Edit"));
    delmenu(h0.figure_id,gettext("&?"));
    toolbar(h0.figure_id,"off");

  // Novas opcoes de menu
    hop1 = uimenu("parent",h0, "label",gettext("Arquivo"));
    hop2 = uimenu("parent",h0, "label",gettext("Sobre"));
  // Menu: Arquivo (remover janela grafica)
    uimenu("parent",hop1, "label",gettext("Fechar"), "callback", "close(h0)");
  // Menu: Sobre
    uimenu("parent",hop2, "label",gettext("Autor da Interface"), "callback","ASCV_Sobre();");

//----------------------- FUNÇÕES DAS EQUAÇÕES ------------

  function hd = EquationFunction (input, option)
    hd = uicontrol(...
    'Parent',h0,'style','pushbutton','string',input, ...
    'callback',"deriv",'Position',[20,500-350*option,80+70*option,20],...
    'backgroundcolor', [option 0.5 0.5] ...
    );
  endfunction

  function heq = Equation_Text (input, option)
    heq = uicontrol( ...
    'Parent',h0,'style','text','string', ...
    Equation,'Position',[70,460-350*option,320,30],...
    'FontWeight','bold','FontSize',15 ...
    );
  endfunction

//----------------------- EQ            -------------------
  Equation=" Y = ";
  hd1  = EquationFunction(" Função:", 0)
  he   = Equation_Text(Equation, 0)
//----------------------- EQ DERIVADA   -------------------
  EquationDer=" Y'' = ";
  hd2  = EquationFunction(" Gráfico da Derivada", 1)
  hder = Equation_Text(EquationDer, 1)
//----------------------- FUNÇÕES DOS COEFICIENTES --------
  function output = getCoord(coeficient, coord)
    select (coeficient)
      case "A" then
        n=0
      case "B" then
        n=1
      case "C" then
        n=2
      case "D" then
        n=3
      case "E" then
        n=4
      else
        n=5
    end

    select (coord)
      case "slider" then
        initialValue = 410
      else
        initialValue = 430
    end
    
    output = initialValue - n * 60

  endfunction

  function output = texto_coeficiente(input)
    output = uicontrol( ...
      'Parent',h0,'style','text','string'," Coeficiente " + input,'Position',...
      [20,getCoord(input, "texto_coeficiente"),70,20] ...
    );
  endfunction

  function output = slider(input)
    output = uicontrol(...
    'Parent',h0,'style','slider','MIN',-50,'Max',50,'Position',...
    [20,getCoord(input, "slider"),420,20],...
    'backgroundcolor', [0.5 0.5 0.5], ...
    'callback',"graphe"...
    );
  endfunction

  function output = reset_button (input)
    output = uicontrol(...
    'Parent',h0,'style','pushbutton','string', ...
    "Reset",'callback',"R_" + input,'Position',...
    [380,getCoord(input, "reset_button"),60,20] ...
    );
    
  endfunction

  function output = slider_value (input, h)
    output = uicontrol( ...
    'Parent',h0,'style','text','string'," "+string(h.value),...
    'Position',...
    [210,getCoord(input, "slider_value"),35,20],...
    'FontWeight','bold','FontSize',15 ...
    );
  endfunction

//----------------------- Coeficiente A -------------------
  h1t = texto_coeficiente ("A")
  h1  = slider            ("A")
  h1r = reset_button      ("A")
  h1v = slider_value      ("A", h1)

//----------------------- Coeficiente B -------------------
  h2t = texto_coeficiente ("B")
  h2  = slider            ("B")
  h2r = reset_button      ("B")
  h2v = slider_value      ("B", h2)

//----------------------- Coeficiente C -------------------
  h3t = texto_coeficiente ("C")
  h3  = slider            ("C")
  h3r = reset_button      ("C")
  h3v = slider_value      ("C", h3)

//----------------------- Coeficiente D -------------------
  h4t = texto_coeficiente ("D")
  h4  = slider            ("D")
  h4r = reset_button      ("D")
  h4v = slider_value      ("D", h4)
//----------------------- hg.figure     -------------------
  hg=figure(...
    'backgroundcolor', [0.1 0.1 0.1]...
  );
  hg.figure_name      = "Gráfico de uma função de Terceiro Grau";
  hg.figure_position  = [609, 71];
  hg.figure_size      = [628,594];

  lines(0);

//----------------------- FUNÇÃO GRAPHE -------------------
  function graphe;
    set(h1v,'string'," "+string(h1.value));
    set(h2v,'string'," "+string(h2.value));
    set(h3v,'string'," "+string(h3.value));
    set(h4v,'string'," "+string(h4.value));
    clf;

    x=-4:0.01:4;y=myf(h1.value,h2.value,h3.value,h4.value,x);
    drawlater();
    plot2d(x,y,rect=[-4 -100 4 100]);
    hp=gca();
    hp.x_location = "middle";
    hp.y_location = "middle";
    drawnow();
    h1v.string  =" "+string(h1.value);

    // élaboration de la chaine de l'équation (eq)
    eq1=h1.value;

    if h1.value==0;
      eq1="";
    else;
      eq1=string(h1.value)+"x3 "
    end;
    
    eq2=h2.value;

    if h2.value==0;
      eq2="";
    else;
      if h2.value<0;
        eq2=string(h2.value)+"x2 ";
      else;
        eq2="+"+string(h2.value)+"x2 ";
      end;  
    end;

    eq3=h3.value;

    if h3.value==0;
      eq3="";
    else;
      if h3.value<0;
        eq3=string(h3.value)+"x ";
      else;
        eq3="+"+string(h3.value)+"x ";
      end;  
    end;

    eq4=h4.value;

    if h4.value==0;
      eq4="";
    else;
      if h4.value<0;
        eq4=string(h4.value);
      else;
        eq4="+"+string(h4.value);
      end;  
    end;

    eq=" y = "+eq1+eq2+eq3+eq4;set(he,'string',eq);

    xtitle('Gráfico de uma função');   // titulo do grafico
    toolbar(hg.figure_id,'off');
  endfunction;
//----------------------- FUNÇÃO DERIV --------------------
  function deriv; // Grafico da derivada
    graphe;
    x=-4:0.01:4;dy=dyf(h1.value,h2.value,h3.value,h4.value,x);
    drawlater();
    plot2d(x,dy,5,rect=[-4 -100 4 100]);  // 5 = vermelho
    ap=gca();
    ap.children(1).children.line_style=3;
    drawnow();
  endfunction;
//----------------------- FUNÇÕES DE RESET ----------------
  function R_A
    // Reset dos coefficientes  valor = ZERO
    set(h1,'value',0);
    graphe;
  endfunction;

  function R_B
    set(h2,'value',0);
    graphe;
  endfunction;

  function R_C
    set(h3,'value',0);
    graphe;
  endfunction;

  function R_D
    set(h4,'value',0);
    graphe;
  endfunction;
