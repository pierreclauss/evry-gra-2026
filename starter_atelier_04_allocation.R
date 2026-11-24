# Atelier 4 – Allocation d’actifs : script de démarrage
# Objectif : importer quelques classes d'actifs et préparer une base mensuelle pour l'allocation.

library(tidyverse)
library(tidyquant)
library(lubridate)

start_date <- "2015-01-01"
end_date   <- Sys.Date()

# Univers minimal pour démarrer.
# À compléter ou modifier selon l'analyse retenue.
tickers <- c(
  "SPY",  # actions
  "AGG",  # obligations
  "GLD",  # or
  "VNQ"   # immobilier coté
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
# - passer à une fréquence mensuelle ;
# - calculer les rentabilités ;
# - construire la matrice de covariance ;
# - définir un portefeuille équipondéré ;
# - construire une frontière efficiente ;
# - identifier minimum variance et portefeuille tangent ;
# - tester des contraintes ;
# - comparer les résultats avec et sans actifs alternatifs ;
# - discuter la robustesse des allocations obtenues.
