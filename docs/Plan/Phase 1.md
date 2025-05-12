# Phase 1 (0–6 mois) — Objectif : ≈ 14 h/semaine

_(2 h chaque soir du lundi au vendredi + une session longue de 3–4 h le week-end)_

---

## Mois 1 — ALU 16 bits + bases de logique numérique

### Semaine 1
- **Lundi** : Lire chap. 1–2 _Nand2Tetris_ (45') + résumé (10 bullet points)
- **Mardi** : Implémenter NAND/AND/OR en Verilog (90')
- **Mercredi** : ALU sur papier → diagramme KiCad (2 h)
- **Jeudi** : Testbench Verilator (1 h)
- **Vendredi** : Simulation additionneur → logs Git (1 h)
- **Week-end** : Démo : addition 7+8 sur ALU
- **Livrable** : ALU 8 bits opérationnelle (`M1_W1`)

### Semaine 2
- **Lundi** : Étendre ALU à 16 bits (90')
- **Mardi** : Intégrer opérations logiques (90')
- **Mercredi** : Couverture de test > 90 % (2 h)
- **Jeudi** : Rédiger README technique (1 h)
- **Vendredi** : Sprint debug + capture écran
- **Week-end** : Filmer démo : oscillo + terminal
- **Livrable** : Vidéo #1 montée et uploadée

### Semaine 3
- **Lundi** : Brainstorm pipeline + TODO
- **Mardi** : Refactor ALU → pipeline (90')
- **Mercredi** : Implémenter registre IF/ID (2 h)
- **Jeudi** : Benchmark latence vs non-pipeline
- **Vendredi** : Préparer slides pipeline (1 h)
- **Week-end** : Filmer segment : "Pourquoi le pipeline"
- **Livrable** : `cpu_pipeline.v`, brouillon article

### Semaine 4
- **Lundi** : Écrire assembleur Python (1 h)
- **Mardi** : Exporter binaire `pong.asm` (1 h)
- **Mercredi** : Exécution CPU → debug (2 h)
- **Jeudi** : Captures perf (branch mispred.)
- **Vendredi** : Finaliser vidéo #1
- **Week-end** : Publier vidéo + post LinkedIn
- **Livrable** : Sprint M1 terminé

**Total Mois 1** : ~56 h  
**Livrables** : ALU 16 bits, pipeline v0, vidéo #1

---

## Vue mensuelle (14 h/semaine)

| Mois | Thème                                   | Titre vidéo                                  |
|------|-----------------------------------------|----------------------------------------------|
| 1    | Logique numérique (ALU + pipeline)      | Construire un CPU à partir de NAND           |
| 2    | Micro-archi CPU + assembleur            | CPU pipeliné + assembleur maison             |
| 3    | DL → quantisation int8                  | De PyTorch à TFLite sur Raspberry Pi         |
| 4    | Boot RISC-V + Zephyr                    | Booter mon code sur RISC-V                   |
| 5    | HLS & IP Conv2D                         | Accélérer une convolution Python → FPGA      |
| 6    | Intégration Edge IA                     | Démo Edge AI complet (modèle + IP + bench)   |

---

## Cadence quotidienne (soirées)

- **Slot 1 (60 min)** : Deep work = Verilog, PyTorch, papier
- **Slot 2 (60 min)** : Tests, documentation, Git, script vidéo

---

## Week-end type

**Samedi (~3 h)** :
- Filmer B-roll (scope, VS Code, board)
- Lancer batchs longs (synthèse FPGA, entraînement)

**Dimanche (~1 h, optionnel)** :
- Montage final (DaVinci), upload non-listé
- Rédiger description vidéo + chapitrage

---

## Outils recommandés

- **Timer 60 min** : Forest / Focus To-Do
- **Kanban hebdo** : GitHub Projects (Phase 1)
- **Script CI** : `./run_ci.sh` → sim + synth + push
- **OBS** : scène dual-screen + audio préconfigurée

---

## KPI mensuels à publier

- Pourcentage de tests RTL passés (objectif > 95 %)
- Latence et consommation : bloc edge vs CPU
- Nombre de commits et durée totale des vidéos publiées

---

## Résumé

- 14 h/semaine suffisent à condition de moduler : 2 h/j + un sprint week-end
- Livrables hebdo clairs → une vidéo complète par mois
- Filmer au fil de l’eau évite de cannibaliser le temps de code
- Les KPI publiés montrent ta progression de façon crédible

---

