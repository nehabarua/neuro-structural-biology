reinitialize
load ../Data/raw_pdb/1EQG.pdb, 1EQG
load ../Data/raw_pdb/1CX2.pdb, 1CX2

super 1CX2, 1EQG

bg_color white
set ray_opaque_background, 1
set antialias, 2

hide everything, all
show cartoon, 1EQG or 1CX2
color grey90, 1EQG
color grey70, 1CX2
set cartoon_transparency, 0.55

select lig_ibp, 1EQG and resn IBP
select lig_s58, 1CX2 and resn S58
show sticks, lig_ibp or lig_s58
color red, lig_ibp
color blue, lig_s58

select cox1_res523, 1EQG and chain A and resi 523
select cox2_res523, 1CX2 and chain A and resi 523
show spheres, cox1_res523 or cox2_res523
color firebrick, cox1_res523
color marine, cox2_res523
set sphere_scale, 0.8, cox1_res523 or cox2_res523

select cox1_ca, 1EQG and chain A and resi 523 and name CA
select cox2_ca, 1CX2 and chain A and resi 523 and name CA

set label_font_id, 7
set label_size, 20
set label_shadow_mode, 0
set float_labels, 1
set label_outline_color, black

label cox1_ca, "Ile523 (COX-1)"
set label_color, red, cox1_ca
set label_position, [-8.0, 4.0, 5.0], cox1_ca

label cox2_ca, "Val523 (COX-2)"
set label_color, blue, cox2_ca
set label_position, [4.5, -4.0, 5.0], cox2_ca

orient (lig_ibp or lig_s58)
zoom (cox1_res523 or cox2_res523 or lig_ibp or lig_s58), 2.5
deselect

ray 2400, 1600
png ../Results/figures/figure2_COX_selectivity_residue523.png, dpi=300