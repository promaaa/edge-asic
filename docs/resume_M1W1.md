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

# Simulation 7 + 8

## Contexte
Vérification de l’addition 7 + 8 sur l’ALU 8 bits (`alu8.v`) via le testbench `add7_plus_8.v`.
**Commande de lancement :**

```bash
iverilog -o rtl/results/add7_plus_8 rtl/alu8.v tests/add7_plus_8.v
rtl/results/vvp add7_plus_8$
```



# Planning samedi — B-roll & commit

Travaille en 3 créneaux de 60 min, puis finalise par un commit & push.

---

## Slot 1 (60 min) — Préparation & B-roll oscillo

1. **Configurer OBS (10 min)**  
   - Charge la scène “dual-screen” (écran + webcam).  
   - Place et allume la ring-light pour éclairage uniforme.  
   - Branche et teste le micro Lavalier (niveau + monitoring casque).  
   - Vérifie que ta zone de capture affiche l’oscilloscope et un coin webcam.

2. **Filmer l’oscilloscope (40 min)**  
   - **Plan large** (face à l’écran) pendant ~10 s, échelle lente.  
   - **Plan serré** sur l’écran (détails de la grille) pendant ~10 s.  
   - **Plan sur les commandes** (boutons/knobs) pendant ~10 s.  
   - **Plan du câblage** (sondes, entrées) pendant ~10 s.  
   - Entre chaque prise, change l’échelle de temps (ms/div → μs/div).

3. **Vérifier et ranger les rushes (10 min)**  
   - Relis rapidement chaque clip pour confirmer qu’ils sont nets.  
   - Renomme-les en `oscillo_01.mp4`, `oscillo_02.mp4`, etc.  
   - Déplace-les dans :  
     ```
     video1/broll/oscillo/
     ```

---

## Slot 2 (60 min) — B-roll VS Code & board

1. **Filmer VS Code (30 min)**  
   - **Plan serré** sur l’édition Verilog (`rtl/alu8.v`) pendant ~10 s.  
   - **Plan sur KiCad** si tu as un schéma, pendant ~10 s.  
   - **Plan d’ensemble** du clavier + écran éditorial, pendant ~10 s.

2. **Filmer le board FPGA (25 min)**  
   - **Vue globale** du Pynq-Z2 alimenté (1 prise ~10 s).  
   - **Plan serré** sur les branchements (HDMI, alimentation, JTAG) ~10 s.  
   - **Détail des broches** utilisées par ton montage (5 s).

3. **Vérifier et ranger (5 min)**  
   - Jette un œil rapide aux vidéos (focus, luminosité).  
   - Renomme en `code_01.mp4`, `board_01.mp4`, etc.  
   - Range dans :  
     ```
     video1/broll/code_board/
     ```

---

## Slot 3 (60 min) — Commit & push

1. **Préparer le commit (10 min)**  
   - Vérifie la structure de dossiers :  
     ```
     video1/broll/oscillo/
     video1/broll/code_board/
     ```
   - Lance ton script CI local pour t’assurer qu’il n’y a pas d’erreur :  
     ```bash
     ./run_ci.sh
     ```

2. **Ajouter et committer (15 min)**  
   ```bash
   git add video1/broll/oscillo/* video1/broll/code_board/*
   git commit -m "video1: ajout B-roll oscillo & code_board"
