# Atelier 1 – Actions : CAPM, alpha, bêta et styles

## Objectifs pédagogiques

- Relier la performance d’un actif actions à son exposition au marché.
- Estimer un bêta et un alpha à partir de rentabilités historiques.
- Comparer plusieurs styles actions : croissance, value, momentum, quality, low volatility, small caps.
- Montrer qu’une surperformance apparente peut provenir d’une exposition systématique plutôt que d’un alpha pur.

## Données possibles

Vous choisirez un nombre limité d’ETF, indices ou facteurs permettant de représenter un marché actions diversifié et quelques styles de gestion. L’univers retenu doit rester suffisamment compact pour permettre une véritable interprétation.

Vous pouvez par exemple vous appuyer sur les séries suivantes :

| Bloc | Tickers ou séries possibles | Rôle pédagogique |
|---|---|---|
| Benchmark actions diversifié | ^SP500TR, MSE.PA, C40.PA, ^GDAXI, ACWI, URTH | Fournir une référence de marché pour l’analyse des performances et des expositions |
| Technologie / croissance | QQQ | Illustrer l’exposition aux valeurs de croissance et à la technologie |
| Value | VLUE, VTV | Comparer le style value au marché |
| Momentum | MTUM | Observer la dynamique de tendance sur actions |
| Quality | QUAL | Approcher le facteur qualité |
| Low volatility | USMV, SPLV | Tester un style défensif actions |
| Small caps | IWM, IJR | Illustrer l’effet taille et la sensibilité au cycle |
| Facteurs académiques | Mkt-RF, SMB, HML, RMW, CMA, MOM | Régression multifactorielle à partir de la Kenneth French Data Library |

Cette liste est indicative : vous n’êtes pas obligés d’utiliser l’ensemble de ces séries.

## Travail demandé

1. Télécharger des prix ajustés mensuels sur une période suffisamment longue.
2. Calculer les rentabilités mensuelles.
3. Calculer quelques statistiques simples : rentabilités annualisées, volatilités annualisées, maximum drawdown et ratios de Sharpe.
4. Comparer les performances cumulées.
5. Estimer, pour chaque exposition retenue, une régression de marché par rapport à un benchmark de marché.
6. Comparer les bêtas et les alphas obtenus, ainsi que leur significativité statistique.
7. Examiner les corrélations entre les différentes expositions.
8. Discuter si les différences de performance observées semblent venir principalement du marché, du style ou d’une composante spécifique.

## Pour aller plus loin

Une analyse multifactorielle peut être conduite à partir de facteurs tels que size, value ou momentum.

## Traces d’analyse conseillées – non notées

Conservez pour vous :

- un tableau synthétique des statistiques de performance et de risque ;
- un graphique de performance cumulée ;
- un tableau ou un graphique des bêtas estimés ;
- quelques phrases répondant à la question : **quel style a le mieux fonctionné sur la période, et pourquoi ?**

L’objectif est de vous entraîner à interpréter les résultats, et pas seulement à produire du code.