Aluno: Douglas Kosvoski	Matrícula: 1911100022
CCR: Circuitos Digitais 2º Fase - Vespertino
Professores: Luciano Lores Caimi e Adriano Sanick Padilha

Universidade Federal da Fronteira Sul - Campus Chapecó

Relatório - Batalha Naval

Apresentação
	O trabalho final da disciplina consiste em codificar e implementar simulações do jogo Batalha Naval, jogo de tabuleiro de dois jogadores, no qual os jogadores têm de adivinhar em que quadrados estão os navios do oponente. Seu objectivo é derrubar os barcos do oponente adversário, ganha quem derrubar todos os navios adversários primeiro, formado por uma matriz 4x4 (16 posições, tendo cada posição uma codificação associada) com dois barcos dispostos nela, tendo a solução implementada em diversas plataformas, entre elas estão:  TinkerCad, Logisim, Quartus e Altera DE1.
Os comando se baseiam em 2 conjuntos de chaves codificadas para os barcos (4 Keys para cada barco), 1 conjunto de chaves sem codificação para o adversário (4 Keys), bem como um switch de disparo (o disparo é realizado na posição real da matriz de acordo com o input do adversário). Tendo como retorno LED’s de coloração verde (em nível lógico alto) para quando o disparo acertar o alvo e LED’s de tom avermelhado (em nível lógico alto) para quando o alvo passar ileso do disparo.

Descrição da Solução
A solução encontrada e utilizada em todo o desenvolvimento do trabalho consiste em criar uma codificação qualquer (que já não estivesse sendo utilizada por outros grupos) para cada posição da matriz e em seguida convêrte-la para expressões lógicas utilizando Algebra de Boole levando em consideração não a codificação como um todo para as expressões, mas sim, a partir da posição de cada caracter, exemplo:


Agora fazendo a simplificação com a ajuda do programa Logisim, a partir de soma de produto (Sum of Products) e Mapa de Karnaugh dos mini-termos da cada linha das sequências codificadas temos as seguintes expressões:

C1 =       C2 = 
C3 =       C4 = 
De acordo com as expressões podemos criar os circuitos lógicos:  

E com cada módulo (C1, C2, C3 e C4) podemos então junto com o INPUT do adversário formar a Main (Junção dos módulos de codificação, entrada do adversário e comparador entre o resultado da codificação e inputs).
Main (Logisim)Aqui temos os circuito (Módulos C1, C2, C3 e C4) implementados na plataforma TinkerCad.
Vemos Também que as entradas A e B em nível lógico baixo e C e D em nível lógico alto nos retornam todos os Leds acesos, ou seja, condiz com a tabela-verdade e equações anteriormente apresentadas.

