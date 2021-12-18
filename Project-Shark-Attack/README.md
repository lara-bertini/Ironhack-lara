# Shark Attack

Objetivos do projeto:
* Limpeza dos dados;
* Extrair insights;
* Responder perguntas: 
1) Qual o país com maior número de ataques?
2) Dos top 5 países com maior número de ataques, onde há maior crescimento anual?
3) O número de ataques aumenta com a população?
4) Qual o país com maior número de ataques por habitantes?

## Getting Started

Inicialmente o arquivo continha ~26 mil linhas, sendo apenas ~8,7 mil não nulas. Além disso, como gostaríamos de estabeler um comparativo entre países, selecionamos os dados mais recentes, com provável coleta de dados mais assertiva.

### Limpando os dados

1) Limpeza dos nomes das colunas, retirando alguns caracteres como [ .:]+
2) Retinada de valores não existentes ou nulos (NaN / 0), quando 0 significava falta de informação e não necessiriamente um valor nulo.
3) Através da identificação de padrões nos dados, foram utilizadas colunas do próprio dataset para completar dados faltantes em outras colunas. Ex: case_number continha o ano, e foi utilizada para completar coluna year.
4) Seleção dos dados mais recentes (>=2010)

### Utilizando os dados

Depois da limpeza temos dados para iniciar a análise. Você pode comparar o arquivo inicial "attacks.csv" com o arquivo já limpo "attacks-clean.csv"

## Extraindo insights

### Qual o país com maior número de ataques? 

Os 4 países com os maiores números de ataques registrados desde 2010 até 2018 são:

* USA, com total de 490 ataques
* Austrália, com 223
* África do Sul, com 63
* Bahamas, com 34
* Brasil, com 19

### Dos top 5 países com maior número de ataques, onde há maior crescimento anual?
Em Bahamas.

### O número de ataques aumenta com a população? 

Em uma matéria da BBC, foi encontrada a seguinte afirmação: "À medida que a população mundial cresce, também aumenta a frequência (de banhistas) nas praias. O número de ataques de tubarões em qualquer região do planeta é altamente influenciado pelo número de pessoas entrando no mar", destaca o ISAF.

https://www.bbc.com/portuguese/brasil-44361617 https://www.nationalgeographicbrasil.com/animais/2019/06/ataques-de-tubarao-o-que-voce-precisa-saber

Isso gerou curiosidade para entendermos se existe correlação positiva entre o número de habitantes de um país e seu respectivo número de ataques registrados. 

Para isso foi utilizado dataset da Kaggle: https://www.kaggle.com/fernandol/countries-of-the-world

O resultado foi uma correlaçã negativa entre população e ataques. 

Veja abaixo a lista dos 4 países com maior população:
1) China
2) India
3) EUA
4) Indonésia
5) Brasil

Dos 5, apenas 2 aparecem no ranking de maiores volumes de casos.

### Qual o país com maior número de ataques por habitantes?

1) new caledonia
2) french polynesia
3) cayman islands
4) seychelles


### A temperatura média do país tem relação com o número de ataques?

Algumas matérias associam aumento de ataques de tubarão com mudanças climáticas: 
https://www.cnnbrasil.com.br/nacional/ataque-de-tubarao-em-ubatuba-pode-ser-efeito-de-mudanca-climatica-diz-pesquisador/

"Em meio às discussões globais sobre as mudanças climáticas na COP26, episódios locais já revelam os impactos na natureza. Um ataque de tubarão a um turista francês, em Ubatuba, no litoral norte paulista, na última semana, foi o primeiro acidente do tipo registrado em 30 anos, segundo o Instituto Argonauta."

Nosso objetivo é estudar de há correlação positiva entre temperatura média dos países e o número de ataques medidos. 

Para esta análise foi utilizada uma base de mudanças climáticas da Kaggle:
https://www.kaggle.com/berkeleyearth/climate-change-earth-surface-temperature-data

A correlação encontrada foi negativa, não suportando o texto acima.


## Conclusão

Embora várias afirmações tenham sido encontradas na internet, nenhuma das citadas neste estudo de fato foram baseadas em profundo estudo analítico e puderam ser suportadas por dados.