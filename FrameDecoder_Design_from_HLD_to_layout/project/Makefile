#make file for the high level design of the project 
#	>>>>>> project_HDL <<<<<<


all: fd.pat fd_syf fd_asimut fd_boom fd_boom_asimut fd_boog fd_boog_asimut fd_loon fd_loon_asimut fd_flatbeh

fd_syf:  fda.vbe\
	fdj.vbe\
	fdm.vbe\
	fdo.vbe\
	fdr.vbe
	@echo " <-- Generated"

fd_asimut: fda.pat\
	fdj.pat \
	fdm.pat \
	fdo.pat \
	fdr.pat
	@echo "<-- Simulated"

fd_boom:  fda_b.vbe\
	fdj_b.vbe\
	fdm_b.vbe\
	fdo_b.vbe\
	fdr_b.vbe 
	@echo "<-- generated"

fd_boom_asimut:fda_b.pat\
	fdj_b.pat\
	fdm_b.pat\
	fdo_b.pat
	@echo " <-- simulated"

fd_boog: fda_b.vst\
	fdj_b.vst\
	fdm_b.vst\
	fdo_b.vst
	@echo " <-- generated"

fd_boog_asimut: fda_b_net.pat\
	fdj_b_net.pat\
	fdm_b_net.pat\
	fdo_b_net.pat
	@echo " <-- simulated"

fd_loon: fda_b_l.vst\
	fdj_b_l.vst\
	fdm_b_l.vst\
	fdo_b_l.vst
	@echo " <-- generated"

fd_loon_asimut: fda_b_l_net.pat\
	fdj_b_l_net.pat\
	fdm_b_l_net.pat\
	fdo_b_l_net.pat
	@echo " <-- simulated"

fd_flatbeh: fda_b_l_net.vbe\
	fdj_b_l_net.vbe\
	fdm_b_l_net.vbe\
	fdo_b_l_net.vbe
	@echo " <-- simulated"

#--------------------fd .pat generation -------------------------------------#
fd.pat: fd.c
	@echo " Generating pattern file -> FD.pat"
	alliance-genpat -v fd

#------------------Finite state machine synthesis ---------------------------#
#syf is used for turning fsm  vhdl to structral vhdl 

fda.vbe: fd.fsm
	@echo " Encoding synthesis -> fda.vbe "
	syf -CEV -a fd

fdj.vbe: fd.fsm
	@echo " Encoding synthesis -> fdj.vbe "
	syf -CEV -j fd

fdm.vbe: fd.fsm
	@echo " Encoding synthesis -> fdm.vbe "
	syf -CEV -m fd

fdo.vbe: fd.fsm
	@echo " Encoding synthesis -> fdo.vbe "
	syf -CEV -o fd

fdr.vbe: fd.fsm
	@echo " Encoding synthesis -> fdr.vbe "
	syf -CEV -r fd

#------------------Behavioral Simulation ------------------------------------#
#asimut is used for simulation (diffrent kind of simulation) 

fda.pat: fda.vbe fd.pat
	@echo " Encoding simulation -a -> fda.pat"
	asimut -zerodelay -b fda fd fda

fdj.pat: fdj.vbe fd.pat
	 @echo "    Encoding Simulation -j -> fdj.pat"
	 asimut -zerodelay -b fdj fd fdj

fdm.pat: fdm.vbe fd.pat
	 @echo "    Encoding Simulation -m -> fdm.pat"
	 asimut -zerodelay -b fdm fd fdm

fdo.pat: fdo.vbe fd.pat
	@echo "    Encoding Simulation -o -> fdo.pat"
	asimut -zerodelay -b fdo fd fdo

fdr.pat: fdr.vbe fd.pat 
	@echo "    Encoding Simulation -r -> fdr.pat"
	asimut -zerodelay -b fdr fd fdr

#---------------------   boom + simulation   --------------------------------#
#Boom is used for logical optimization 
%_b.vbe: %.vbe
	@echo " boolean optimization -> $@ "
	boom -V -d 50 $* $*_b > $*_boom.out

#simulation in comparison mode
%_b.pat: %.pat %_b.vbe
	@echo " Boom ouput behavioral simulation  -> $@ "
	asimut -zerodelay -b -nores $*_b $* 

#------------------------  Boog + simulation   ------------------------------#
#Boog library mapping 
%.vst: %.vbe paramfile.lax
	@echo " logical synthesis -> $@ "
	boog -l paramfile $* > $*_boog.out

#simulation with zero delay 
%_b_net.pat: %_b.vst %.pat
	@echo " Netlist Simulation -> $@ "
	asimut -nores -zerodelay $*_b $*

#---------------------   loon + simulation ----------------------------------#
#loon is used for delay optimization 
%_l.vst: %.vst paramfile.lax
	@echo "    Netlist optimization -> $@"
	loon $* $*_l paramfile > $*_loon.out

#simulation comparison  with zerodelay
%_b_l_net.pat: %_b_l.vst %.pat
	@echo "    Netlist Simulation  -> $@"
	asimut -nores -zerodelay $*_b_l $*

#---------------------- flatbeh + proof  ------------------------------------#
%_b_l_net.vbe: %_b_l.vst %.vbe
	@echo "   Formal checking -> $@"
	flatbeh $*_b_l $*_b_l_net > $*_flatbeh.out
	proof -d $* $*_b_l_net > $*_proof.out

#------------------ Scan-path insertion -------------------------------------#
fdj_b_l_scanpath.vst: fdj_b_l.vst scanpath.path
	@echo "  scanpath insertion -> fdj_b_l_scanpath.vst "
	scapin -VRB fdj_b_l scanpath fdj_b_l_scanpath

#------------------  fdjscapin pat generation -------------------------------#
fdjscapin.pat: fdjscapin.c
	alliance-genpat -v fdjscapin
	@echo " generated pat file -> fdjscapin.pat"

#------------------- simulation with scan-path ------------------------------#
fdjscapin_o.pat: fdjscapin.pat fdj_b_l_scanpath.vst
	asimut fdj_b_l_scanpath fdjscapin fdjscapin_o

#-------------------- placment + simulation ---------------------------------#
fdj_b_l_scanpath.ap: pinorder.ioc fdj_b_l_scanpath.vst
	alliance-ocp -v -ring -ioc pinorder fdj_b_l_scanpath fdj_b_l_scanpath
	@echo " fdj_b_l_scanpath.op -> generated "


#-------------------- routing +simulation -----------------------------------#
fdj_b_l_scanpath_layout.ap: fdj_b_l_scanpath.ap fdj_b_l_scanpath.vst
	nero -V -p fdj_b_l_scanpath fdj_b_l_scanpath fdj_b_l_scanpath_layout
	@echo "routing o/p -> fdj_b_l_scanpath_layout  ->  generated "


#----------- extracted netlist + layout vs schematics + DRC------------------#
fdj_b_l_scanpath_extracted.al: fdj_b_l_scanpath_layout.ap 
	cougar -v fdj_b_l_scanpath_layout fdj_b_l_scanpath_extracted
	lvx vst al fdj_b_l_scanpath fdj_b_l_scanpath_extracted -f
	druc fdj_b_l_scanpath_layout

#--------------------------- chip routing -----------------------------------#
chipr.ap: chip.vst chip.al
	ring chip chipr 
	echo "generated -> chipr.ap"

#---------------------------- chip verification -----------------------------#
chipr_extracted.al: chipr.ap 
	cougar -v -f -c  chipr  chipr_extracted
	lvx vst al chip chipr_extracted -f -a
	druc fdj_b_l_scanpath_layout

#-------------------------- symbolic to real conversion ---------------------#
chipr.cif: chipr.ap
	s2r -v -r chipr


#------------------------------- Clean up -----------------------------------#

clean:
	rm -f *.vbe *.enc *~
	rm -f fd.pat
	rm -f fd*.pat
	rm -f Makefile.*
	rm -f fd*_b*
	rm -f fd*_*
	rm -f chipr*
	@echo "Erase all the files generated by the makefile"
