reinitialize
load ../Data/raw_pdb/4P6W.pdb, 4P6W

remove (not chain A) and (not resn MOF)
remove solvent

bg_color white
set ray_opaque_background, 1
set antialias, 2
set depth_cue, 1

hide everything, all
show cartoon, chain A
color grey85, chain A
set cartoon_transparency, 0.45, chain A

select drug_ligand, organic
show sticks, drug_ligand
color cyan, drug_ligand
util.cnc drug_ligand
set stick_radius, 0.30, drug_ligand

select binding_pocket, (byres (chain A within 4.5 of drug_ligand))
show sticks, binding_pocket
color wheat, binding_pocket
util.cnc binding_pocket
set stick_radius, 0.16, binding_pocket

distance hbonds, drug_ligand, binding_pocket, 3.5, mode=2
hide labels, hbonds
color brightorange, hbonds
set dash_width, 4.0
set dash_gap, 0.25

select r_gln570_ca, chain A and resi 570 and name CA
select r_arg611_ca, chain A and resi 611 and name CA

set label_font_id, 7
set label_size, 20
set label_color, black
set label_outline_color, black
set label_shadow_mode, 0
set float_labels, 1

label r_gln570_ca, "Gln570"
label r_arg611_ca, "Arg611"
set label_position, [-3.5, 3.5, 4.0], r_gln570_ca
set label_position, [3.5, -2.5, 4.0], r_arg611_ca

orient drug_ligand
zoom (binding_pocket or drug_ligand), 3.0
deselect

ray 2400, 1600
png ../Results/figures/figure1_GR_LBD_mometasone_pocket.png, dpi=300