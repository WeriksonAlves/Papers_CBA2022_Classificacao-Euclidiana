function [RD,Classificacao,Resposta,Acerto] = Teste_online(Amostra, Dados)
    % A fuanção compara "verifica" com o banco de dados, classificando e
    % informando a taxa de acerto. Para classificar deve se contar quantos
    % elementos de cada classe foi obtido na respostas e em seguida
    % verificar o maximo é maior que 0.5. Se sim, é igual a "R", se não
    % encontrar o erro, caso contrario é invalido. 
    
    %Definindo as variaveis utilizadas
    Distancias = []; % Matriz onde será guardada as distancias entre cada amostra.
    Classificacao = [["R1" "R2" "R3" "R4" "R5"];];
    Classe = [["A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N"]];
    Matriz_Classe = zeros(1,14);%Matriz com a classificação final
    i1 = 1;
    linha = 1:6;
    V = 0;
    F = 0;
    R = 0;

    for i = 1:(size(Dados,1)/6)%Calcula as distancias de cada gestos para cada gesto por amostra
        Distancias(i1,1) = [norm(Dados(linha,1)-Amostra(:,1))+norm(Dados(linha,2)-Amostra(:,2))+norm(Dados(linha,3)-Amostra(:,3))];
        Distancias(i1,2) = [norm(Dados(linha,4)-Amostra(:,1))+norm(Dados(linha,5)-Amostra(:,2))+norm(Dados(linha,6)-Amostra(:,3))];
        Distancias(i1,3) = [norm(Dados(linha,7)-Amostra(:,1))+norm(Dados(linha,8)-Amostra(:,2))+norm(Dados(linha,9)-Amostra(:,3))];
        Distancias(i1,4) = [norm(Dados(linha,10)-Amostra(:,1))+norm(Dados(linha,11)-Amostra(:,2))+norm(Dados(linha,12)-Amostra(:,3))];
        Distancias(i1,5) = [norm(Dados(linha,13)-Amostra(:,1))+norm(Dados(linha,14)-Amostra(:,2))+norm(Dados(linha,15)-Amostra(:,3))];
        linha = linha + 6;
        i1 = i1 + 1;
    end

    RD = [[" " "R1" "R2" "R3" "R4" "R5"]; [["A";"B";"C";"D";"E";"F";"G";"H";"I";"J";"K";"L";"M";"N"] [Distancias]]];

    for ii = 1:size(Distancias,1) %Percorre todas as linhas de Distancias
        for jj = 1:size(Distancias,2) %Percorre todas as colunas de Distancias
            if Distancias(ii,jj) == 0 %Procura o valor utilizado de referencia
                for jjj = 1:5 %Percorre todas as colunas de Dados
                    if jjj ~= jj %Para as colunas diferentes da referencia
                        if Distancias(ii,jjj) == min(Distancias(:,jjj)) %Se o menor valor for o minimo da coluna
                            Classificacao(2,jjj) = ["V"];
                            Classificacao(3,jjj) = Classe(ii);
                            Matriz_Classe(1,ii) = Matriz_Classe(1,ii) + 1;
                        else
                            Classificacao(2,jjj) = ["F"];
                            for iii = 1:14
                                if Distancias(iii,jjj)==min(Distancias(:,jjj))
                                    Classificacao(3,jjj) = Classe(iii);
                                    Matriz_Classe(1,iii) = Matriz_Classe(1,iii) + 1;
                                end
                            end
                        end
                    else
                        Classificacao(2,jjj) = ["R"];
                        Classificacao(3,jjj) = Classe(ii);
                    end
                end
            end
        end
    end

    if max(Matriz_Classe) > 2 %Ver se é maior que 50%
        for coluna1 = 1:14
            if max(Matriz_Classe) == Matriz_Classe(coluna1) %Encontra a classe do maior valor
                Resposta = Classe(coluna1);
            end
        end
    elseif max(Matriz_Classe) == 2 || max(Matriz_Classe) == 1
        Resposta = "Z";
    end
                  
    for j = 1:size(Classificacao,2)
        if Classificacao(2,j) == "V"
            V = V + 1;
        elseif Classificacao(2,j) == "F"
            F = F + 1;
        elseif Classificacao(2,j) == "R"
            R = R + 1;
        end
    end
    Acerto = (V/(V+F))*100; 
end