# Atelier 2 – Obligations : ACP de la courbe des taux

## Objectifs pédagogiques

- Comprendre empiriquement la décomposition niveau, pente et courbure.
- Manipuler une matrice de taux par maturité.
- Interpréter les composantes principales comme des facteurs de risque obligataires.

## Données possibles

Vous construirez une courbe de taux souverains américains à partir de plusieurs maturités.

Les données peuvent être obtenues auprès de FRED.

| Bloc | Séries FRED possibles | Rôle pédagogique |
|---|---|---|
| Taux courts | DGS1MO, DGS3MO, DGS6MO, DGS1 | Représenter la partie courte de la courbe, fortement sensible à la politique monétaire |
| Taux intermédiaires | DGS2, DGS3, DGS5, DGS7 | Analyser les déformations de pente et de courbure |
| Taux longs | DGS10, DGS20, DGS30 | Représenter la partie longue de la courbe et les anticipations de long terme |
| Indicateur de pente | T10Y2Y ou DGS10 − DGS2 | Compléter l’analyse des phases de pentification, d’aplatissement ou d’inversion |
| Stress de marché | VIXCLS | Relier, de manière optionnelle, les mouvements de taux aux épisodes de stress financier |

Cette liste est indicative : vous n’êtes pas obligés d’utiliser l’ensemble de ces séries.

## Travail demandé

1. Importer plusieurs séries de taux correspondant à différentes maturités.
2. Transformer les taux en variations mensuelles ou hebdomadaires.
3. Réaliser une analyse en composantes principales sur ces variations.
4. Examiner la part de variance expliquée par les premières composantes.
5. Tracer les *loadings* des trois premières composantes principales.
6. Interpréter économiquement les composantes obtenues en termes de niveau, pente et courbure.
7. Examiner quelques épisodes de marché particulièrement intéressants, par exemple le choc Covid, le choc inflationniste de 2022 ou des phases d’inversion de la courbe.
8. Relier les résultats aux principaux modes de gestion du risque de taux : duration, stratégies de pente et positionnements de courbure.

## Traces d’analyse conseillées – non notées

Conservez pour vous :

- un graphique de la courbe des taux à plusieurs dates ;
- un tableau de variance expliquée par les trois premières composantes ;
- un graphique des *loadings* ;
- quelques phrases répondant à la question : **les résultats confirment-ils la lecture niveau / pente / courbure ?**

L’objectif est de vous entraîner à interpréter les résultats, et pas seulement à produire du code.
