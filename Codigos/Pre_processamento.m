function [CP] = Pre_processamento(DR)
    % A função recebe os dados dos movimentos recortados e centraliza eles
    % em relação ao markset da cabeça. Em seguida realiza a normalização
    % do mesmo, retornando esse resultado ao final.
    
    % Definição das variaveis usadas na função:
    DC = []; % Matriz com os dados centralizados
    DN = []; % Matriz com os dados normalizados
      
    media0 = mean(DR);
    % Realiza a centralização dos dados
%     for j = 1:6
%         if j<=3
%             DC(:,j) = DR(:,j+3) - DR(:,j);
%         else
%             DC(:,j) = DR(:,j+3) - DR(:,j-3);
%         end
%     end
    for j = 1:6
        if j<=3
            DC(:,j) = DR(:,j+3) - media0(j);
        else
            DC(:,j) = DR(:,j+3) - media0(j-3);
        end
    end
     
    media = mean(DC); % Calcula a media por coluna dos dados centralizados
    desvio = std(DC); % Calcula o desvio padrao dos elementos centralizados
    
    %Realiza a normalização
    for ii = 1:size(DC,1)
        for jj = 1:size(DC,2)
            DN(ii,jj) = (DC(ii,jj) - media(jj))/desvio(jj); 
        end
    end
    
    % Realiza a analise das componentes principais dos dados normalizados
    [CP,~,~,~,~,~] = pca(DN,'Algorithm','svd','Centered',true,'Rows','complete','NumComponents',3);
end