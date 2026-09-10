# ============================================================
# Atelier 1 - Actions
# Script de démarrage
# ============================================================

library(tidyverse)
library(tidyquant)
library(lubridate)

# ------------------------------------------------------------
# 1. Exemple minimal
# ------------------------------------------------------------

# Ces deux tickers servent uniquement à montrer la méthode.
# Vous devez construire votre propre univers pour l'atelier.

tickers <- c("^SP500TR", "MTUM")

start_date <- "2015-01-01"
end_date   <- "2026-08-31"

# ------------------------------------------------------------
# 2. Téléchargement des prix ajustés
# ------------------------------------------------------------

prices <- tq_get(
  tickers,
  get  = "stock.prices",
  from = start_date,
  to   = end_date
) %>%
  select(symbol, date, adjusted)

# Vérification rapide

prices %>%
  group_by(symbol) %>%
  summarise(
    first_date = min(date),
    last_date  = max(date),
    n_obs      = n(),
    .groups = "drop"
  )

# ------------------------------------------------------------
# 3. Passage en rentabilités mensuelles
# ------------------------------------------------------------

monthly_returns <- prices %>%
  group_by(symbol) %>%
  tq_transmute(
    select     = adjusted,
    mutate_fun = periodReturn,
    period     = "monthly",
    type       = "arithmetic",
    col_rename = "return"
  ) %>%
  ungroup()

# ------------------------------------------------------------
# À vous de poursuivre
# ------------------------------------------------------------

# Quelques pistes :
#
# - choisir votre univers d'ETF ou d'indices ;
# - calculer les statistiques de performance et de risque ;
# - tracer les performances cumulées ;
# - choisir un benchmark ;
# - estimer les bêta et alpha ;
# - comparer les styles ;
# - interpréter les résultats et leurs limites.
