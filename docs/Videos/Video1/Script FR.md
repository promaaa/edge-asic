# Construire un CPU à partir de NAND
## Introduction du projet
Pourquoi votre téléphone calcule en binaire sans jamais transpirer ?  
Je suis **Promaa** : six mois, six vidéos, et à la fin un mini‑processeur capable d’Edge‑AI.  
Tout le code et les schémas seront libres sur GitHub.  
Première étape aujourd’hui : lever le capot de la micro‑architecture.
## Objectif de l’épisode
Les CPU sont partout, calculatrices, téléphones, ordinateur, tout ce qui calcule un tant soit peu en a un. 
>Premier obstacle aujourd’hui : comment une **unique** porte logique, la NAND, finit par faire 7 + 8 = 15.

### Rappel portes logiques et détail NAND
Une porte logique est une boîte noire qui reçoit des 0 et des 1, et renvoie un 0 ou un 1. La NAND, c’est _NOT AND_.
Celle-ci se traduit par la table de vérité suivante, une table de vérité étant ce qui permet de comprendre le fonctionnement d'une porte logique en fonction des différentes valeurs d'entrée. 
Une seule porte, la NAND, suffit pour tout faire. En reliant ses deux entrées, on obtient NOT ; deux NAND bien placées donnent AND ; trois pour OR ; quatre pour XOR.
>Avec **seulement** la NAND, on a déjà toutes les briques.
### Implémentation de l'ALU 8 bits et passage à 16 bits
>Empilez ces briques et vous obtenez l’**ALU** : l’Unité Logique et Arithmétique, cœur de chaque CPU. Aujourd’hui on en bâtit une de **8 bits**… puis on la double à 16.

En fait, on va chercher à réaliser une ALU (Unité logique et arithmétique), qui essentiellement est  un circuit capable de réaliser, à la fois, des opérations arithmétiques (addition, soustraction) et des opérations logiques sur des données codés en binaire.

Concrètement, pour construire une ALU à partir de notre unique porte NAND, on procède en plusieurs étapes :

1. **Construction des portes de base**, à partir d’une NAND on obtient facilement une porte NON en reliant ses deux entrées ensemble. 
    - En chaînant correctement des NAND on réalise aussi ET, OU et XOR.
2. **Réalisation d’un demi-additionneur (half-adder)**
    - Le demi-additionneur calcule la somme de deux bits A et B sans tenir compte d’une retenue précédente.
    - On l’implémente avec une XOR (pour la somme) et une ET (pour la retenue) construites en NAND.
3. **Réalisation d’un additionneur complet (full-adder)**
    - Le full-adder ajoute A, B et la retenue d’entrée Cin pour produire un bit de résultat S et une retenue de sortie Cout.
    - On assemble deux demi-additionneurs et une porte OR (construite en NAND) pour obtenir ce circuit.
4. **Chaînage pour N bits**
    - En répétant le full-adder bit par bit et en reliant chaque Cout au Cin du bit supérieur, on obtient un additionneur N-bits.
    - La propagation de la retenue reste la principale source de latence – on peut ensuite optimiser avec un look-ahead carry pour accélérer l’opération.
5. **Ajout de la sélection d’opération**
    - Un petit décodeur (réalisé lui aussi en NAND) interprète un code d’opération (opcode) pour activer, au moyen de multiplexeurs NAND-based, l’addition, la soustraction (addition de A et du complément de B avec Cin=1) ou les fonctions logiques de base.
    - Les sorties de chaque bit-slice (additionneur complet ou fonction logique) sont finalement multiplexées vers le bus de sortie de l’ALU.
        
6. **Génération des drapeaux (flags)
    - À la sortie, on calcule des indicateurs comme Zero (tous les bits à 0), Carry-out, Overflow (Cₙ₋₁ ⊕ Cₙ) et Negative (bit de poids fort) à partir des fils internes de l’additionneur et du résultat.


> Voilà notre ALU **8 bits** opérationnelle.

### Extension 8 -> 16 bits
1. **Dupliquer la bit‑slice** : passer de 8 à 16 lignes, même schéma.
2. **Problème** : le carry traverse désormais 16 éléments → latence × 2.
3. **Teaser** : « Le mois prochain, on cassera cette file d’attente grâce au _look‑ahead carry_ et au **pipeline**. »

**Visuel** : deux barres de progression verticales : 8 cases (0,8 ns) / 16 cases (1,6 ns).
### Tests et démonstration
Si jusqu'alors tu trouves ça clair, un petit pouce m'aide à continuer
Une fois la théorie passée, il est l'heure de mettre les mains dans le cambouie. 
- **Split screen** : à gauche waveform Verilator, à droite une vraie calculatrice.
- **VO** : « Test en direct. Entrée : 0b0111 (7) + 0b1000 (8). Sortie ALU : 0b1111 (15). La calculatrice confirme. »
- **Zoom** sur les bits qui changent dans le simulateur.

Comme dirait l'autre, jusqu'ici tout va bien. Mais dans le monde des processeurs, un ALU 16 bits c'est pipeliné. Et qu'est ce que ça veut dire, on verra ça dans un mois avec le premier prototype de pipeline que j'aurai mis en action. 
J'espère que cette première partie a su susciter en vous de la curiosité. Vous pourrez retrouver l'ensemble des travaux réalisés ce mois-ci dans le Repo GitHub.

## Conclusion
>Et voilà pour la première étape ! Tous les schémas, le Verilog et les testbenchs sont déjà sur GitHub, lien en description.

**Lower‑third** : logo GitHub + URL du repo.
Si cette vidéo t’a été utile, un pouce et un commentaire m’aident énormément. Abonne‑toi pour ne pas manquer le pipeline le mois prochain. À très vite !

