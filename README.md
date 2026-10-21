# Neuro-Structural Biology & Target Selectivity Pipeline

## Overview
This repository contains an *in silico* structural biology and cheminformatics analysis focused on anti-inflammatory target selectivity and central nervous system (CNS) drug-likeness.

### 1. Targets & Structural Biology
- **Glucocorticoid Receptor LBD (PDB: 4P6W):** Bound to mometasone furoate, detailing primary anchor interactions and polar clamps (Gln570 and Arg611).
- **COX-1 vs COX-2 Selectivity (PDB: 1EQG vs 1CX2):** Superposition analysis mapping the steric gatekeeper divergence at residue 523 (Ile523 in COX-1 vs Val523 in COX-2).

### 2. Figures
- `results/figures/figure1_GR_LBD_mometasone_pocket.png`: 300 DPI ray-traced binding pocket topology and electrostatic contacts.
- `results/figures/figure2_COX_selectivity_residue523.png`: 300 DPI gatekeeper steric divergence rendering.
- `results/figures/boiled_egg_plot.png`: SwissADME BOILED-Egg model evaluation for BBB permeation.

### 3. Cheminformatics & ADMET Screening
Physicochemical descriptors, Lipinski Rule of 5 compliance, and Blood-Brain Barrier (BBB) permeation profiles for Ibuprofen, Celecoxib, Dexamethasone, and Cortisol are documented in `results/admet/admet_screening.csv`.