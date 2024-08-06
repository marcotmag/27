# importação dos dados

install.packages("readr")
library(readr)

# usa a biblioteca assim ou ativa ela em "packages"

dados <- read.csv("C:/Users/20231enpro0534/Downloads/olimpiadas.csv")

# ou "import dataset" no canto direito, selecionar a 2 opção e vá ao destino do arquivo.

  ########################
  # Tabela de Frequência #
  ########################

# Tabela Simples
table(dados$Sex) # valores absolutos
table(dados$Sex)/nrow(dados) # valores relativos
table(dados$Sex, dados$NOC) # medalhas por sexo e país

# Filtrando dados
install.packages("dplyr")
library(dplyr)

dados_brasil <- dados %>% filter(NOC == "BRA")
table(dados_brasil$Sex)

  ############
  # Gráficos #
  ############

install.packages("esquisse")
library(esquisse)
esquisser(dados)

#####################################################
# Estatísticas descritivas para a idade dos atletas #
#####################################################

min(dados$Age, na.rm = TRUE) # mínimo (tirando os espaços N/A)
max(dados$Age, na.rm = TRUE) # máximo  (tirando os espaços N/A)
sd(dados$Age, na.rm = TRUE) # média (tirando os espaços N/A)

esquisser(dados)

dados_f <- dados %>% filter(Sex == "F")
mean(dados_f, na.rm = TRUE)
 