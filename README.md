# Cours Gestion des Actifs

Ce *repo* regroupe les supports du cours de Gestion des actifs du Master 2 *Gestion des Risques et des Actifs* de l’Université Évry Paris-Saclay.

Il sera progressivement enrichi avec :

- les **slides du cours** ;
- les supports des **quatre ateliers data** ;
- quelques **scripts de démarrage** en **R**.


## Quelques repères sur l’industrie française de la gestion d’actifs

En préambule du cours, voici quelques ordres de grandeur de l’industrie de la gestion d’actifs.

À fin **2025**, la gestion d’actifs française atteint un record d’encours sous gestion.

| Indicateur | Chiffre clé |
|---|:---:|
| Encours sous gestion en France | **5 421 Md€** |
| Sociétés de gestion | **671** |
| Encours d’investissement responsable | **2 971 Md€** |
| Encours des fonds au niveau européen | **25 239 Md€** |
| Collecte nette des fonds européens | **+888 Md€** |

Source : [AFG – Panorama de la gestion d’actifs – données à fin 2025](https://www.afg.asso.fr/fr/publication/panorama-de-la-gestion-dactifs-a-fin-2025/)


## Les quatre ateliers

Le cours est organisé autour de quatre journées thématiques. Chaque journée comprend un atelier data destiné à relier les concepts financiers à des données observables : prix de marché, taux d’intérêt, indices, ETF ou séries macrofinancières.

La progression est cumulative : vous commencerez par décomposer la performance des actions, puis vous analyserez la courbe des taux, testerez le rôle diversifiant des actifs alternatifs et terminerez par la construction d’un portefeuille multi-actifs.


| Séance | Thème | Atelier data | Question centrale |
|:---:|---|---|---|
| **1** | Actions | CAPM, alpha, bêta et styles actions | La performance vient-elle du marché, du style ou d’un alpha spécifique ? |
| **2** | Obligations | ACP de la courbe des taux | Les mouvements de taux se résument-ils bien à niveau, pente et courbure ? |
| **3** | Actifs alternatifs | Diversification, inflation et stress de marché | Les actifs alternatifs diversifient-ils vraiment actions et obligations ? |
| **4** | Allocation d’actifs | Construction d’un portefeuille multi-actifs | Comment combiner les classes d’actifs dans un portefeuille optimisé ? |


## Philosophie des ateliers

Les ateliers ne donnent pas lieu à un rapport noté.

Ils constituent en revanche une préparation importante à l’examen : il pourra être demandé de lire des résultats, de les interpréter financièrement, d’en discuter les limites et de mobiliser les concepts du cours.

L’objectif n’est donc pas seulement d’obtenir un tableau ou un graphique, mais surtout de comprendre ce qu’il montre.

Les étudiants sont encouragés à conserver, pour chaque atelier, quelques résultats et leur propre analyse, en reliant les résultats empiriques aux concepts du cours et en discutant les limites des *proxys* utilisés, la sensibilité des résultats à la période étudiée et la portée des conclusions.


## Conseils de travail

- Ne cherchez pas à multiplier les actifs : un univers de **6 à 8 séries bien choisies** suffit souvent.
- Documentez les choix de **période**, de **fréquence** et de *tickers*.
- Vérifiez les **valeurs manquantes**, les ruptures de série et les incohérences éventuelles.
- Privilégiez des graphiques simples et lisibles.
- Interprétez toujours les résultats : un calcul sans commentaire financier a peu de valeur.
- Rédigez quelques phrases d’analyse pour vous entraîner : c’est cette capacité à **interpréter et discuter les résultats** qui sera mobilisée à l’examen.


## Utilisation de l’IA

Les outils d’IA peuvent être utilisés pendant les ateliers pour aider à comprendre, produire ou corriger du code.

Ils ne remplacent pas l’analyse. Chaque étudiant doit être capable d’expliquer les résultats obtenus, de discuter les choix méthodologiques et d’identifier les limites de l’analyse.


## Sources de données possibles

Selon les ateliers, les données pourront notamment provenir des sources suivantes :

| Source | Usage principal | Accès possible |
|---|---|---|
| [Yahoo Finance](https://finance.yahoo.com/) | ETF actions, obligations, or, matières premières, REITs, infrastructures, proxys liquides de stratégies alternatives | Via `tidyquant::tq_get(get = "stock.prices")` ou téléchargement CSV depuis Yahoo Finance |
| [FRED – Federal Reserve Bank of St. Louis](https://fred.stlouisfed.org/) | Taux souverains américains, spreads, VIX, indicateurs macrofinanciers | Via `tidyquant::tq_get(get = "economic.data")` ou téléchargement CSV depuis FRED |
| [Kenneth French Data Library](https://mba.tuck.dartmouth.edu/pages/faculty/ken.french/data_library.html) | Facteurs actions Fama-French, *momentum*, portefeuilles de styles | Téléchargement CSV/TXT depuis la Data Library |


## Avant le premier atelier

Chaque étudiant doit disposer de **R** et **RStudio**.

1. Installer R depuis le [R Project](https://cran.r-project.org/).
2. Installer [RStudio Desktop](https://posit.co/download/rstudio-desktop/).
3. Installer les principaux packages utilisés pendant les ateliers :

```r
install.packages(
  c(
    "tidyverse",
    "tidyquant",
    "lubridate"
  )
)
```

D’autres packages pourront être ajoutés en fonction des besoins.

## Organisation du *repo*

Le *repo* est organisé autour de trois types de supports :

```text
evry-gra-2026/
├── README.md
├── slides/
│   ├── Les Actions.pdf
│   ├── Les Obligations.pdf
│   ├── Les Actifs Alternatifs.pdf
│   └── L'Allocation d'Actifs.pdf
├── ateliers/
│   ├── atelier_01_actions.md
│   ├── atelier_02_obligations.md
│   ├── atelier_03_alternatifs.md
│   └── atelier_04_allocation.md
└── scripts/
    ├── starter_atelier_01_actions.R
    ├── starter_atelier_02_obligations.R
    ├── starter_atelier_03_alternatifs.R
    └── starter_atelier_04_allocation.R
```

Les fichiers présents dans le dossier `ateliers/` présentent les objectifs, les données possibles et le travail demandé pour chaque séance.

Les scripts de démarrage sont volontairement courts : ils donnent une base technique sans fournir l’univers d’investissement, les résultats ni l’analyse attendue.
