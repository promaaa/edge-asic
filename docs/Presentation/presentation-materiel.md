# Présentation projet personnel Edge AI / Hardware – Brief labo

## 1. Pourquoi je mène ce projet

J’ai initié ce projet à titre personnel pour développer une vraie compétence en co-conception hardware/software appliquée à l’IA embarquée.  
C’est un domaine stratégique, avec peu de formations concrètes, et j’ai envie d’apprendre en construisant de A à Z : du module Verilog jusqu’à l’inférence sur matériel basse consommation.

Mes motivations :
- Comprendre ce qui se passe entre un modèle PyTorch et un circuit physique.
- Apprendre à optimiser les compromis matériels : latence, énergie, coût.
- M’éloigner de la pure théorie pour acquérir une vraie compétence d’intégration.

## 2. Mon projet en pratique

J’ai défini une feuille de route progressive sur 6 mois pour monter en compétence étape par étape :

| Étape               | Action                                                  | Objectif                                               |
| ------------------- | ------------------------------------------------------- | ------------------------------------------------------ |
| Logique numérique   | Implémenter portes NAND, AND, OR en Verilog + testbench | Apprendre les bases de la conception RTL               |
| Micro-architecture  | Construire une ALU, pipeline simple, assembleur         | Comprendre l’optimisation des datapaths                |
| Modèles ML compacts | Quantifier et déployer sur microcontrôleurs             | Appréhender les contraintes Edge AI réelles            |
| Accélérateurs HLS   | Implémenter une convolution sur FPGA (Pynq)             | Relier algorithmes ML et implémentation matérielle     |
| Tests & mesures     | Analyser latence et consommation                        | Apprendre à mesurer et optimiser en conditions réelles |

Chaque bloc donnera lieu à des livrables fonctionnels (simulations, démos réelles, benchmarks).

## 3. Pourquoi j’ai besoin de ce matériel

Le matériel dont j'aurai besoin et pourquoi :

- **FPGA (Pynq-Z2)** : tester mes blocs IP, implémenter des accélérateurs soft-core.
- **Carte RISC-V (Milk-V ou équivalent)** : comprendre l’architecture ouverte et le déploiement bas-niveau.
- **Carte STM32 Discovery** : travailler sur des cas MCU industriels avec contraintes mémoire/énergie.
- **Analyseur logique, oscilloscope, INA219** : observer les signaux, mesurer les timings et la consommation réelle.
- **Accès au labo** : pour les équipements lourds (alim, debug JTAG, environnement de simulation).

## 4. Mon ambition personnelle

À l’issue de ce projet, je veux :
- Être capable de concevoir un accélérateur Edge AI simple et optimisé.
- Maîtriser le cycle complet : du modèle logiciel à l’implémentation matérielle.
- Développer un socle de compétences solides, réutilisables en contexte industriel ou entrepreneurial.

Il s'agit pour moi d'un projet de formation par la pratique, rigoureux et documenté.

## 5. Bilan
Démarche autonome mais rigoureuse. Labo apporte possible de solliciter ponctuellement vos retours techniques sur des points précis.

Ce projet n’a pas de finalité académique : il s’agit d’un projet personnel appliqué, où votre environnement me donne les moyens de progresser sérieusement.

