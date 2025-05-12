## Feuille de route détaillée pour devenir **expert Edge AI + co-design modèle/ASIC** (et préparer ta start-up)

### 0. Comprendre les forces du marché (1 semaine – lecture rapide)

|Indice du marché|Pourquoi c’est favorable|Source|
|---|---|---|
|**Edge AI Hardware = +20,7 % CAGR (2024-2032)**|Explosion des capteurs/robots, besoin d’inférence locale < 5 W|[GlobeNewswire](https://www.globenewswire.com/news-release/2025/02/13/3025975/0/en/Edge-AI-Hardware-Market-to-Reach-USD-6-90-Billion-by-2032-Driven-By-Advancements-in-AI-and-Edge-Computing-Research-by-SNS-Insider.html?utm_source=chatgpt.com)|
|**Pénurie européenne d’ingénieurs puces (~75 000 postes d’ici 2030)**|Conception analogique, systèmes embarqués, sécurité : profils critiques|[DECISION - Études & Conseil](https://www.decision.eu/wp-content/uploads/2024/11/2024-ECSA-Skills-Strategy.pdf)|
|**Programmes souverains RISC-V / EuroHPC (DARE) financés à 120 M €**|L’Europe paie ta R&D si tu travailles sur archi ouverte low-power|[eurohpc-ju.europa.eu](https://eurohpc-ju.europa.eu/advancing-european-sovereignty-hpc-risc-v-2025-03-06_en)|
|**Shuttles MPW Sky130 gratuits (Open MPW)**|Prototype ASIC sans lever de fonds (> 2 runs/an)|[efabless.com](https://efabless.com/open_shuttle_program?utm_source=chatgpt.com)|
|**Chips Act 👉 objectif 20 % de production mondiale mais manque de talents**|Fenêtre pour des fondateurs techniques « deep-tech »|[The European Files](https://www.europeanfiles.eu/digital/the-european-chips-act-its-now-or-never)|
### 1. **Phase Fondamentaux (0-6 mois)**

_But : parler aussi bien « Verilog » que « Transformer »._

| Bloc                                | Ressources clés                                                                                     |
| ----------------------------------- | --------------------------------------------------------------------------------------------------- |
| **Logique numérique & micro-archi** | _Nand2Tetris part II_, MIT 6.004 (OCW), livre _CMOS VLSI Design_ (Rabaey).                          |
| **Algorithmes ML**                  | _CS231n_ (vision), _FastAI_ (pratique), paper _MobileNetV3_ → pour comprendre les contraintes edge. |
| **Python ↔ C ↔ Assembler**          | Écrire un micro-kernel sur RISC-V (QEMU) et un inference script PyTorch.                            |
🎯 **Livrable perso** : un CNN int8 qui tourne dans un simulateur RISC-V.
### 2. **Phase Outils & Spécialisation (6-12 mois)**

_But : être à l’aise sur toute la toolchain, du modèle à la GDSII._

| Compétence                      | Action très concrète                                                                       |
| ------------------------------- | ------------------------------------------------------------------------------------------ |
| **Hardware Description**        | Verilog → SystemVerilog ; alternative : Chisel (Scala) pour le génératif.                  |
| **High-Level Synthesis**        | Xilinx Vitis HLS ou OpenCL-FPGA (Intel). Implémenter `conv2d` avec boucle non - bloquante. |
| **Quantization & Pruning**      | TVM / tflite-micro. Compare latence/accuracy sur carte STM32 vs Jetson Nano.               |
| **Verification & DFT**          | Utiliser Cocotb + formal verification (SymbiYosys).                                        |
| **Méthodes d’optimisation PPA** | Lire les notes Berkeley __Hardware-Software Co-Design for AI__ (EdgeTorch).                |


🎯 **Livrable perso** : un IP block « Depthwise Conv » + kernel PyTorch associé, testé sur FPGA (p.ex. Pynq-Z2).
### 3. **Premier silicon réel (12-18 mois)**

1. **Design RTL → GDS** avec la stack open-source (OpenLane + Sky130).
    
2. **Passage MPW** : soumets ton _caravel_ GDS au shuttle Open MPW (deadline ≈ tous les 3 mois).
    
3. **Bring-up** : carte breakout + firmware Zephyr pour charger un modèle TinyML.
    
4. **Poster / talk** : propose ton retour d’expérience au **RISC-V Summit Europe** ou au **FOSSi Foundation DevConf** (juin à Munich) [European Processor Initiative](https://www.european-processor-initiative.eu/event/risc-v-summit-europe-2024/).
    

> **Objectif** : tu es officiellement « silicon-proven ». C’est un magnet pour stages/VCs.

### 4. **Deep-dive & réseau européen (18-36 mois)**

| Pilier              | Actions                                                                                                                                                       |
| ------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Académique**      | Doubler avec un Master recherche micro-électronique/IA à Grenoble INP-Phelma ou TU Delft.                                                                     |
| **Labs & stages**   | CEA-Leti (Grenoble, ASIC basse conso), IMEC (Leuven, 6 mois), Lab-STICC (Brest) pour rester local.                                                            |
| **Programmes EU**   | – **EIT Digital Master School** bourse 1-an  <br>– **EuroHPC JU AI Factories** accès compute/mentor  <br>– **IPCEI ME/CT** pour subvention de pré-production. |
| **Communautés OSS** | Contribue à **PULP-platform**, **Apache TVM**, ou à la _benchmark suite_ MLPerf-Tiny.                                                                         |
### 5. **Pré-startup (≤ 4 ans)**

1. **Pain Point clair** : ex. inference temps-réel < 10 mW pour drones viticoles.
    
2. **Moat technique** : ton IP + dataset capteurs. Brevette **co-design algo-mémoire** ou **méca-ancrage** si robotique.
    
3. **PoC industriel** : déploie 10 cartes fixes chez un client pilote (Usine agro ou loco-motive SNCF).
    
4. **Financement** :
    
    - 500 k€ _Bourse French Tech Emergence_ → prototype bêta.
        
    - 2-3 M€ **EIC Accelerator** « Deep Tech & Chip Design ».
        
    - VC : Elaia, Supernova, European Innovation Council Fund.
        
5. **Roadmap** : MPW #2 (180 nm) → MPW #3 (28 nm) avec GlobalFoundries Dresden ou TSMC EuroFOUP (si dispo).

### 6. **Compétences défensives (difficiles à automatiser)**

| Axe                                  | Pourquoi l’IA ne t’y remplace pas demain                                                  |
| ------------------------------------ | ----------------------------------------------------------------------------------------- |
| **Systèmes physiques complexes**     | Packaging, térmorégulation, EMC ; nécessite essais labo & terrain.                        |
| **Arbitrage PPA x Accuracy x Coût**  | Choix multi-critères, pas seulement optimiser une métrique ML.                            |
| **Interface client & réglementaire** | Normes CE / ISO 26262, négociation supply-chain, audit de sûreté.                         |
| **Créativité inter-disciplinaire**   | Inventer un mapping transformer-in-memory OU un actuateur magnétique : hors scope AutoML. |
### « Sprint » 30-jours que tu peux lancer dès demain

| Semaine | Action clé                                                                                             | Heures estimées |
| ------- | ------------------------------------------------------------------------------------------------------ | --------------- |
| 1       | Suivre **FastAI v5 Lesson 1-2** + lire _Deep Learning_ chap 6                                          | 10 h            |
| 2       | Implémenter int8 Conv2D en Verilog, tester sur ModelSim                                                | 12 h            |
| 3       | Synthèse HLS → FPGA (Pynq-Z2), mesurer latence                                                         | 15 h            |
| 4       | Rédiger un blog technique « From PyTorch to Gates in 28 days » et le poster sur LinkedIn/RISC-V France | 8 h             |
## Derniers conseils personnels

- **Choisis une niche** (drone agricole, santé portable, maintenance rail) : l’Edge AI est vaste, un créneau = crédibilité.
    
- **Maintiens un « journal de bord public »** : GitHub, LinkedIn, conférences. Les VCs adorent suivre la progression technique en temps réel.
    
- **Mixe matériel & logiciel dès tes projets étudiants** : propose à ton école un cours-projet où la note >50 % vient de la démo sur FPGA.
    
- **Réserve tout de suite ta place sur le prochain shuttle MPW** : même un design jouet te donnera l’expérience « silicon » que 99 % des ingénieurs ML n’auront jamais.
    

---
### TL;DR

1. **6 mois** pour solides bases HW + ML.
    
2. **12-18 mois** pour ton **premier ASIC open-source**.
    
3. **≤ 3 ans** pour devenir un des rares profils européens capables de parler à la fois **Transformer quantisé** et **timing closure**.
    
4. **4 ans** : ta start-up Edge AI hardware est « fundable », exactement au moment où la demande et la pénurie sont maximales.
    

Bonne route !
