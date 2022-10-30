function ND = Recorta_Movimento(DO)
    % A função calcula a velocidade a uma "Taxa" (pre definida no programa)
    % e realiza duas comparações: Se a velocidade é maior que "Vmin" e se
    % "Hmin" já foi atingida. Quando uma dessas condições for atendida o
    % programa entende que o movimento se iniciou e começa a sobrepor
    % "ND" (em suas respectivas posições). Quando ambas as condições são
    % descompridas o programa entende que o movimento foi finalizado e a
    % função retorna "ND".

    % Definição das variaveis usadas na função:
    L = size(DO,1); % Numero de linhas da matriz.
    DNum = table2array(DO(5:L,3:11)); % Conversão para tabela e seleção de valores que são apenas numeros.
    Taxa = 24; % Intervalo das medições.
    V = []; % Matriz com as velocidades dos marcadores nos eixos x, y e z.
    LV = 1; % Variavel da iteração de DS.
    Vmin = 0.001; % Valor mínimo de velocidade.
    Hmin = 0.95; % Valor mínima de altura.
    Y2 = size(DNum,2)-4; % Coluna Y para o markset 2
    Y5 = size(DNum,2)-1; % Coluna Y para o markset 3
    DR = zeros(size(DNum,1),size(DNum,2)); % Dados recortados.
    Var = 0; % Variavel logica de gravação

    % Calcula as velocidades
    for i = 1:size(DNum,1)
        if rem(i,Taxa)==0
            V(LV,:) = (DNum(i,:) - DNum(i-Taxa+1,:))/Taxa;
            LV = LV + 1;
        end
    end
    
    % Recorta os dados
    for i1 = 1:(size(V,1)-1)
        a = abs(V(i1,Y2)) > Vmin; % Verifica se a velocidade é maior que Vmin
        b = abs(V(i1+1,Y2)) > Vmin; % Verifica se a velocidade é maior que Vmin
        c = abs(V(i1,Y5)) > Vmin; % Verifica se a velocidade é maior que Vmin
        d = abs(V(i1+1,Y5)) > Vmin; % Verifica se a velocidade é maior que Vmin
        e = DNum(i1*Taxa,Y2) > Hmin; % Verifica se a altura é maior que Hmin
        f = DNum(i1*Taxa,Y5) > Hmin; % Verifica se a altura é maior que Hmin
        if ((a && b) || (c && d) || e || f) % Se qualquer um for verdadeiro, então
            L0 = i1*Taxa; % Determina o indice da linha
            LT = (L0-Taxa+1):L0; % Determina a faixa de iteração
            DR(LT,:) = DNum(LT,:); % Copia as informações para a nova matriz
            Var = 1; %Informa que o movimento está sendo gravado
        elseif (~((a && b) || (c && d) || e || f) && Var) % Caso contraio, se todos forem falsos
            L0 = i1*Taxa; % Determina o indice da linha
            LT = (L0-Taxa+1):L0; % Determina a faixa de iteração
            DR(LT,:) = DNum(LT,:); % Copia mais uma faixa de informações para a nova matriz
            Var = 0; %Encerra o movimento
        end
    end

    ND =[]; % Novos dados
    nd = nonzeros(DR'); % Elimina os zeros da matriz
    col = 1:size(DNum,2);
    i3 = 0;
    for i2 = 1:(size(nd,1)/9)
        for j2 = col
            ND(i2,j2) = nd(j2+i3);
        end
        i3 = i3 + 9;
    end
end