% Codigo principal do projeto: Faz a leitura dos dados, faz o pre - 
% processamento e classifica os gestos.

clear; clc; close all;% Limpa o workspace, command window e fecha as janelas

%Recorta os movimentos por meio de um gatilhos dos gestos, e depois
%centraliza, faz a normaliização e em seguida calcula a pca de cada um.

%[coeff,score,latent,tsquared,explained,mu] = [C,S,L,T,E,M]
CA0 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_A.csv')));
CA1 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_A_001.csv')));
CA2 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_A_002.csv')));
CA3 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_A_003.csv')));
CA4 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_A_004.csv')));

CB0 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_B.csv')));
CB1 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_B_001.csv')));
CB2 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_B_002.csv')));
CB3 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_B_003.csv')));
CB4 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_B_004.csv')));

CC0 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_C.csv')));
CC1 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_C_001.csv')));
CC2 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_C_002.csv')));
CC3 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_C_003.csv')));
CC4 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_C_004.csv')));

CD0 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_D.csv')));
CD1 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_D_001.csv')));
CD2 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_D_002.csv')));
CD3 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_D_003.csv')));
CD4 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_D_004.csv')));

CE0 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_E.csv')));
CE1 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_E_001.csv')));
CE2 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_E_002.csv')));
CE3 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_E_003.csv')));
CE4 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_E_004.csv')));

CF0 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_F.csv')));
CF1 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_F_001.csv')));
CF2 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_F_002.csv')));
CF3 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_F_003.csv')));
CF4 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_F_004.csv')));

CG0 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_G.csv')));
CG1 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_G_001.csv')));
CG2 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_G_002.csv')));
CG3 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_G_003.csv')));
CG4 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_G_004.csv')));

CH0 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_H.csv')));
CH1 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_H_001.csv')));
CH2 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_H_002.csv')));
CH3 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_H_003.csv')));
CH4 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_H_004.csv')));

CI0 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_I.csv')));
CI1 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_I_001.csv')));
CI2 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_I_002.csv')));
CI3 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_I_003.csv')));
CI4 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_I_004.csv')));

CJ0 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_J.csv')));
CJ1 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_J_001.csv')));
CJ2 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_J_002.csv')));
CJ3 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_J_003.csv')));
CJ4 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_J_004.csv')));

CK0 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_K.csv')));
CK1 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_K_001.csv')));
CK2 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_K_002.csv')));
CK3 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_K_003.csv')));
CK4 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_K_004.csv')));

CL0 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_L.csv')));
CL1 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_L_001.csv')));
CL2 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_L_002.csv')));
CL3 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_L_003.csv')));
CL4 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_L_004.csv')));

CM0 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_M.csv')));
CM1 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_M_001.csv')));
CM2 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_M_002.csv')));
CM3 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_M_003.csv')));
CM4 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_M_004.csv')));

CN0 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_N.csv')));
CN1 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_N_001.csv')));
CN2 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_N_002.csv')));
CN3 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_N_003.csv')));
CN4 = Pre_processamento(Recorta_Movimento(readtable('Werikson_IC_Gesto_N_004.csv')));
%%
%Concatena as componentes principais de cada gesto em uma linha.
CPA = [CA0 CA1 CA2 CA3 CA4];
CPB = [CB0 CB1 CB2 CB3 CB4];
CPC = [CC0 CC1 CC2 CC3 CC4];
CPD = [CD0 CD1 CD2 CD3 CD4];
CPE = [CE0 CE1 CE2 CE3 CE4];
CPF = [CF0 CF1 CF2 CF3 CF4];
CPG = [CG0 CG1 CG2 CG3 CG4];

CPH = [CH0 CH1 CH2 CH3 CH4];
CPI = [CI0 CI1 CI2 CI3 CI4];
CPJ = [CJ0 CJ1 CJ2 CJ3 CJ4];
CPK = [CK0 CK1 CK2 CK3 CK4];
CPL = [CL0 CL1 CL2 CL3 CL4];
CPM = [CM0 CM1 CM2 CM3 CM4];
CPN = [CN0 CN1 CN2 CN3 CN4];

%%
%Concatena o conjunto em forma de matriz.
CP = [CPA;CPB;CPC;CPD;CPE;CPF;CPG;CPH;CPI;CPJ;CPK;CPL;CPM;CPN];

%%
%[Dist,Class,Acert] = Teste_online(CB1,CP)

%
rep = 1;%numero de reptições que o teste irá fazer
Coluna0 = ["A";"B";"C";"D";"E";"F";"G";"H";"I";"J";"K";"L";"M";"N"];%Gestos usados
Linha0 = ["Classes" "R1" "R2" "R3" "R4" "R5" "Total"];%Titulo da tabela
Resultado = zeros(14,(size(CP,2)/3)+1);%Estrutura da matriz
Vetor_Conhecido = [];%Resposta esperada
Vetor_Resposta = [];%Resposta obtida

for k = 1:rep
    Lin0 = randperm(14,14);%Ordem dos Gestos aleatorio a ser comparado
    Col0 = randperm(5,5);%Ordem das Amostras aleatoria a ser comparada
    for i = Lin0
        for j = Col0
            Lin1 = 6*i; %Convertendo para indices da matriz de CP
            Col1 = 3*j; %Convertendo para indices da matriz de CP
            Lin2 = (Lin1-5):Lin1;%Linhas das CP de um elemento especifico
            Col2 = (Col1-2):Col1;%Colunas das CP de um elemento especifico
            [Dist,Class,Resp,Acert] = Teste_online(CP(Lin2,Col2),CP);
            Acert2 = Acert*0.04;%Tira ou coloca em porcentagem (1 ou 0.04)
            Resultado(i,j) = Acert2;
            Resultado(i,(size(CP,2)/3)+1) = Resultado(i,(size(CP,2)/3)+1) + Acert2;
            Vetor_Conhecido = [Vetor_Conhecido Coluna0(i,1)];
            Vetor_Resposta = [Vetor_Resposta Resp];
        end
    end
end
Solution = [[Linha0]; [[Coluna0] [Resultado]]];

%%
cm = confusionchart(Vetor_Conhecido,Vetor_Resposta)
%saveas(gcf,'Nova Matriz de Confusão1.png')