# Atelier 3 – Actifs alternatifs : diversification, inflation et stress de marché

## Objectifs pédagogiques

- Comparer le comportement de plusieurs proxys liquides d’actifs alternatifs.
- Mesurer leur performance, leur risque et leur corrélation avec les actions et les obligations.
- Tester leur rôle pendant différentes périodes de stress de marché.
- Discuter les limites des proxys cotés pour représenter des actifs alternatifs physiques ou non cotés.

## Données possibles

Vous construirez un univers compact combinant quelques actifs traditionnels et plusieurs proxys liquides d’actifs alternatifs.

Vous pouvez par exemple vous appuyer sur les séries suivantes :

| Bloc | Tickers ou séries possibles | Rôle pédagogique |
|---|---|---|
| Actions de référence | SPY, ACWI, URTH | Fournir un point de comparaison avec les marchés actions |
| Obligations de référence | AGG, BND, IEF, TLT | Comparer les actifs alternatifs à un coeur obligataire |
| Or | GLD, IAU | Étudier un actif refuge potentiel et son comportement en période de stress |
| Matières premières | DBC, BCI, COMT | Analyser l’exposition aux chocs inflationnistes et au *roll yield* |
| Immobilier coté | VNQ, REET, IYR | Utiliser un proxy liquide de l’immobilier, sensible aux taux et aux marchés actions |
| Infrastructures cotées | IGF, NFRA, GRID | Étudier des actifs réels cotés exposés aux infrastructures et à la transition énergétique |
| Stratégies alternatives liquides | QAI, MNA, DBMF | Approcher imparfaitement certaines stratégies alternatives liquides |
| Private equity coté | PSP, PEX | Utiliser un proxy coté du private equity, sensible aux marchés actions et au financement |
| Stress de marché | VIXCLS | Identifier et documenter les épisodes de stress financier |

Cette liste est indicative : vous n’êtes pas obligés d’utiliser l’ensemble de ces séries.

## Travail demandé

1. Construire un univers de 6 à 8 actifs combinant actions, obligations et plusieurs proxys d’actifs alternatifs.
2. Télécharger des prix ajustés sur une période suffisamment longue et construire une base mensuelle homogène.
3. Calculer les rentabilités mensuelles ainsi que quelques statistiques simples : rentabilité annualisée, volatilité annualisée, maximum drawdown et ratio de Sharpe.
4. Examiner les corrélations entre les différentes expositions.
5. Comparer les comportements pendant plusieurs sous-périodes, par exemple avant le Covid, pendant le choc Covid et lors du choc inflationniste de 2022.
6. Identifier les actifs qui ont réellement diversifié un portefeuille actions-obligations sur la période étudiée.
7. Discuter les limites des proxys cotés pour représenter des actifs alternatifs non cotés ou moins liquides.

## Traces d’analyse conseillées – non notées

Conservez pour vous :

- une matrice de corrélation lisible ;
- un graphique de performance cumulée ;
- un tableau des maximum drawdowns ;
- quelques phrases répondant à la question : **quels actifs alternatifs ont réellement apporté de la diversification, et dans quelles conditions ?**

L’objectif est de vous entraîner à interpréter les résultats, et pas seulement à produire du code.
