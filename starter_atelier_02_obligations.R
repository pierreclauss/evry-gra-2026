# Atelier 2 – Obligations : script de démarrage
# Objectif : importer quelques taux Treasury depuis FRED et préparer une base de travail.

library(tidyverse)
library(lubridate)

start_date <- as.Date("2015-01-01")
end_date   <- Sys.Date()

# Quelques maturités pour démarrer.
# À compléter avec d'autres points de la courbe si nécessaire.
series_fred <- c(
  "DGS1",   # 1 an
  "DGS5",   # 5 ans
  "DGS10",  # 10 ans
  "DGS30"   # 30 ans
)

# Fonction de téléchargement direct d'une série FRED.
# On évite ici tq_get(), dont l'accès à FRED peut être instable, et on lit directement les fichiers CSV de FRED.
# Les taux FRED sont exprimés en pourcentage annuel.
get_fred <- function(serie) {
  
  url <- paste0(
    "https://fred.stlouisfed.org/graph/fredgraph.csv?id=",
    serie
  )
  
  read_csv(url, show_col_types = FALSE) |>
    rename(
      date  = 1,
      value = 2
    ) |>
    mutate(
      date  = as.Date(date),
      value = as.numeric(value),
      serie = serie
    ) |>
    filter(
      date >= start_date,
      date <= end_date
    )
}

# Téléchargement de toutes les maturités
taux <- map_dfr(series_fred, get_fred)

# Vérification rapide des données téléchargées
glimpse(taux)

# Exemple : premières observations
head(taux)

# À vous de poursuivre :
# - compléter éventuellement les maturités ;
# - choisir une fréquence mensuelle ou hebdomadaire ;
# - construire une matrice date × maturités ;
# - calculer les variations de taux ;
# - traiter les valeurs manquantes ;
# - réaliser l'ACP ;
# - analyser la variance expliquée et les loadings ;
# - interpréter niveau, pente et courbure.