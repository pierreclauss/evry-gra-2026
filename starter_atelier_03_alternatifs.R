# Atelier 3 – Actifs alternatifs : script de démarrage
# Objectif : importer quelques proxys liquides et préparer une base mensuelle de comparaison.

library(tidyverse)
library(tidyquant)
library(lubridate)

start_date <- "2015-01-01"
end_date   <- Sys.Date()

# Quelques expositions pour démarrer.
# À compléter ou modifier selon l'univers retenu.
tickers <- c(
  "SPY",  # actions
  "AGG",  # obligations
  "GLD",  # or
  "DBC"   # matières premières
)

prices <- tq_get(
  tickers,
  get  = "stock.prices",
  from = start_date,
  to   = end_date
)

# Vérification rapide des données téléchargées
glimpse(prices)

# À vous de poursuivre :
# - compléter l'univers avec d'autres proxys alternatifs ;
# - passer à une fréquence mensuelle ;
# - calculer les rentabilités ;
# - comparer performance, volatilité, drawdowns et corrélations ;
# - analyser plusieurs périodes de stress ;
# - discuter les limites des proxys cotés utilisés.
