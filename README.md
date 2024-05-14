# Título: **Interação com o Ambiente Mediante Classificação por Distância Euclidiana**

**Trabalho enviado para CBA em 2022**: https://sba.org.br/open_journal_systems/index.php/cba/article/view/3208

Os aplicativos baseados em gestos ou ações são cada vez mais comuns na vida cotidiana. Isso porque permitem que o usuário acione o equipamento sem a necessidade de tocá-lo, além de ser possível acioná-lo remotamente. Assim, este trabalho propõe um método de reconhecimento de gestos utilizando a Análise de Componentes Principais (PCA) como redutor da dimensionalidade das variáveis e a distância euclidiana como classificador. O objetivo aqui é interagir com um ambiente por meio das ações de um usuário. Para isso, foi criado um banco de dados próprio com 14 classes de ações. O classificador é validado por meio de uma operação on-line e a matriz de confusão é usada para analisar os resultados. O classificador obteve uma taxa de acerto superior a 80% para 6 das 14 classes. Isso mostra que o presente trabalho pode ser aprimorado. No entanto, vale a pena observar que a principal contribuição foi a formalização de um classificador simplista, que faz uso de um pequeno banco de dados.

## Panorama do Sistema de Classificação de Gestos

1. **Aquisição de Dados**:
   - Inclui a captura de gestos por meio de imagens ou vídeos usando câmeras ou sensores.
   - Os dados são obtidos de conjuntos de dados existentes.

2. **Extração de Características**:
   - Identificação e extração de características relevantes dos dados capturados que descrevem diferentes gestos.
   - Essas características abrangem as posições das mãos.

3. **Pré-processamento**:
   - Preparação dos dados para a etapa de classificação, incluindo a centralização e a obtenção das componetes principais do movimento.

4. **Classificação de Dados**:
   - Utilização de modelos de aprendizado de máquina para classificar os gestos com base nas características extraídas.
   - Abordagens utilizada foi a Distância euclidiana

## Informações de contato

Para obter mais informações, dúvidas ou sugestões de melhorias, entre em contato.
