#livre 
https://github.com/22nds/nand2tetris/blob/master/book/chapter%2001.pdf
# Nand2Tetris — Résumé Chapitres 1 et 2

## Chapitre 1 : Circuits logiques et langage matériel

- **Logique booléenne et tables de vérité**  
  Toute fonction booléenne, quelle que soit sa complexité, peut être exprimée en combinant trois opérateurs de base : `AND`, `OR`, `NOT`.  
  Il existe $2^{2^n}$ fonctions booléennes possibles pour $n$ variables.

- **Représentation canonique**  
  Les fonctions booléennes peuvent être exprimées sous forme de **somme de produits (Sum of Products - SOP)** ou **produit de sommes (Product of Sums - POS)**.  

- **Portes logiques de base**  
  Présentation des portes `AND`, `OR`, `NOT`, `NAND`, `NOR`, `XOR`, `XNOR`.  
  `NAND` et `NOR` sont dites **universelles**, car elles suffisent à implémenter toutes les autres fonctions logiques.

- **Multiplexeurs et Démultiplexeurs**  
  - **Multiplexeur** : sélection d’une entrée parmi plusieurs en fonction de bits de sélection.  
  - **Démultiplexeur** : aiguillage d’un signal vers plusieurs sorties possibles.  
  Ces composants sont essentiels pour la gestion des flux de données dans les architectures matérielles.

- **Bus de données**  
  Un **bus** est une collection de bits groupés, permettant de manipuler plusieurs bits en parallèle (notion de **bit-width**).

- **HDL (Hardware Description Language)**  
  Introduction au HDL utilisé dans le projet : langage permettant de décrire les circuits matériels de manière formelle.

## Chapitre 2 : Nombres binaires et circuits arithmétiques

- **Représentation binaire des nombres**  
  Base de la représentation des données en machine.  
  Introduction à la notation **radix** pour exprimer des nombres dans différentes bases.
![[Pasted image 20250512200249.png]]
- **Complément à deux (Two's Complement)**  
  Méthode standard pour représenter les entiers signés, qui permet de traiter addition et soustraction avec le même circuit matériel.  
  Plage de valeurs pour $n$ bits : $[-2^{n-1}, 2^{n-1} - 1]$.

- **Overflow**  
  L’overflow se produit lorsque le résultat d’une addition sort de la plage représentable.  
  Détection d’overflow en complément à deux : incohérence sur le bit de signe.

- **Additionneurs**  
  - **Half-adder** : addition de 2 bits, sortie `sum` et `carry`.  
  - **Full-adder** : addition de 3 bits (2 bits + `carry-in`), sortie `sum` et `carry-out`.  
  - **Propagation du carry** : limitation de la vitesse des additionneurs en série.  
    Prépare le terrain pour des optimisations comme le **carry-lookahead**.
- **Incrementer** : Circuit spécifique pour ajouter 1 à un nombre binaire.  
  Peut être optimisé car l’un des opérandes est constant.
