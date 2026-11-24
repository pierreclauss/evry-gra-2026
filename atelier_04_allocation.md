# Atelier 4 – Allocation d’actifs : construction d’un portefeuille multi-actifs

## Objectifs pédagogiques

- Construire une frontière efficiente à partir de données historiques.
- Comparer plusieurs règles d’allocation : équipondération, minimum variance et portefeuille tangent.
- Comprendre la sensibilité des résultats aux rentabilités attendues, aux volatilités et aux corrélations.
- Tester l’apport d’actifs alternatifs dans une allocation multi-actifs.
- Discuter les limites d’une optimisation fondée sur des données historiques.

## Données possibles

Vous construirez un univers multi-actifs suffisamment diversifié pour comparer plusieurs règles d’allocation, tout en conservant un nombre limité de séries.

Vous pouvez par exemple vous appuyer sur les séries suivantes :

| Bloc | Tickers possibles | Rôle dans l’univers d’investissement |
|---|---|---|
| Actions | SPY, ACWI, URTH, QQQ | Moteur principal de performance |
| Obligations agrégées | AGG, BND | Cœur obligataire diversifié |
| Taux longs | TLT, IEF | Exposition au risque de taux |
| Crédit | LQD, HYG | Exposition aux spreads de crédit |
| Or | GLD, IAU | Diversification et actif refuge potentiel |
| Matières premières | DBC, BCI | Exposition aux chocs inflationnistes |
| Immobilier coté | VNQ, REET | Actif réel coté, sensible aux taux et aux marchés actions |
| Infrastructures cotées | IGF, NFRA | Exposition à des actifs réels cotés |
| Stratégies alternatives liquides | QAI, MNA, DBMF | Décorrélation potentielle et moteurs de performance différents |

Cette liste est indicative : vous n’êtes pas obligés d’utiliser l’ensemble de ces séries.

## Travail demandé

1. Construire un univers multi-actifs de taille raisonnable et une base mensuelle homogène sur une période suffisamment longue.
2. Calculer les rentabilités mensuelles, les rentabilités moyennes, les volatilités et la matrice de covariance.
3. Construire un portefeuille équipondéré comme point de comparaison.
4. Construire une frontière efficiente.
5. Identifier le portefeuille minimum variance et le portefeuille tangent.
6. Comparer les allocations obtenues avec et sans actifs alternatifs.
7. Tester quelques contraintes réalistes, par exemple long-only, poids maximum par actif ou poids maximum par classe d’actifs.
8. Comparer les performances cumulées, les volatilités et les drawdowns des portefeuilles obtenus.
9. Discuter la robustesse des résultats et la sensibilité de l’optimisation aux données d’entrée.

## Traces d’analyse conseillées – non notées

Conservez pour vous :

- un graphique de frontière efficiente ;
- un tableau des poids des portefeuilles étudiés ;
- un graphique comparant la performance cumulée des portefeuilles ;
- quelques phrases répondant à la question : **l’ajout d’actifs alternatifs améliore-t-il réellement le profil rentabilité-risque du portefeuille ?**

L’objectif est de vous entraîner à interpréter les allocations obtenues comme une aide à la décision, et non comme des solutions optimales définitives.
