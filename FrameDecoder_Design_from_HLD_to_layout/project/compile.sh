#!/bin/sh
# clean the prevously created files
make clean
export MBK_OUT_LO="vst"

# copying the vhdl into the fsm file to be able to simulate the vhdl file after changing it directly
cp fd.vhdl fd.fsm

# displaying the fsm using xfsm
xfsm -l fd.fsm  &

# generating the pattern file
make fd.pat

# generating the vbe file using syf
make fd_syf

# simulating the fsm using asimut
make fd_asimut

# displaying the result of the simulation
#xpat -l fda.pat &
#xpat -l fdj.pat &
#xpat -l fdm.pat &
#xpat -l fdo.pat &
#xpat -l fdr.pat &

# Logical Optimization + simulation in comparison mode
make fd_boom
make fd_boom_asimut

# Library Mapping + simulation in comparison mode
make fd_boog
make fd_boog_asimut

# netlist optimization + simulation in comparison mode
make fd_loon
make fd_loon_asimut

# Netlist visualization
xsch -I vst -l fdj_b_l

# Netlist checking
make fd_flatbeh

# Delay Simulation 
asimut fdj_b_l fd fdj_b_l_delay
xpat -l fdj_b_l_delay

# Scan-path insertion 
make fdj_b_l_scanpath.vst

# simulation with the inserted scanpath 
make fdjscapin.pat
make fdjscapin_o.pat
xpat -l fdjscapin_o &

# placment and simulation 
export MBK_IN_LO="vst"
make fdj_b_l_scanpath.ap
graal -l fdj_b_l_scanpath &

# routing + simulation
make fdj_b_l_scanpath_layout.ap
graal -l fdj_b_l_scanpath_layout &

export MBK_OUT_LO="al"
# LVS + DRC 
make fdj_b_l_scanpath_extracted.al



# chip routing 
make chipr.ap
graal -l chipr &

export MBK_OUT_LO="al"
# chip verification
cp fdj_b_l_scanpath_extracted.al fdj_b_l_scanpath.al 
# make chipr_extracted.al

# symbolic to real conversion
export RDS_TECHNO_NAME="techno-035.rds"
make chipr.cif
dreal -l chipr &
