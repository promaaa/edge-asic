---

## name: title  
class: center, middle

# Phase 1

## De la porte NAND à l’ALU 16 bits

### Promaa · Série « Build‑Your‑CPU »

---

  
![[logo_promaa.png]]

---
## Pourquoi votre téléphone calcule‑t‑il en **binaire** sans jamais transpirer ?

---

## From Bits to Chips (FB2C)

### 6 mois · 6 vidéos · 1 projet Edge‑AI 

https://github.com/promaaa/edge-asic

---


## Objectif du jour

**Comment une seule porte NAND permet de faire :**  
`7 + 8 = 15`

---

### La porte NAND

![[nand_truth.png]]

> **NAND = NOT AND**

---

### Avec la NAND on peut tout construire !

- `NOT` (entrées reliées)
    
- `AND` (NAND → NOT)
    
- `OR` (3 NAND)
    
- `XOR` (chaîne de 4 NAND)
    

---

## Empilons ces briques :

### Voici l’**ALU** !

_(Unité Logique et Arithmétique)_

---



### Étape 1 : Demi‑additionneur (HA)

![[half-adder.svg]]
S = A ⊕ B  
Carry = A · B

---

### Étape 2 : Additionneur complet (FA)

![[full_adder.svg]]  
2 × HA + OR  
Gère **Cin** et **Cout**

---



## Étape 3 : Chaîne 8 bits

![[alu8_diag.svg]]  
Carry se propage de bit 0 → bit 7

---



### Étape 4 : Bloc logique parallèle

AND · OR · XOR  
Sélectionnés plus tard par MUX

---



### Étape 5 : Sélecteur d’opération

Décodeur NAND → MUX (opcode 3 bits)

---



### Étape 6 : Flags

- **Z** : Zero
- **C** : Carry‑out
- **V** : Overflow
- **N** : Negative

---



# ALU 8 bits ✅

---

## Extension : 8 → 16 bits

1. Duplique la bit‑slice
    
2. Carry traverse 16 éléments ✕2 latence
    
3. **Teaser** : look‑ahead carry & pipeline (prochaine vidéo)
    

---


### Démonstration live

`0b0111 (7) + 0b1000 (8) → 0b1111 (15)`  
![[waveform_demo.vcd]]

---

## Merci !

Code, schémas & testbenchs sur GitHub  
👍 Like, 💬 commentaire & 🔔 abonnement pour le pipeline le mois prochain