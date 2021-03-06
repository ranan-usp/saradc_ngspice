* SPICE3 file created from avsd_opamp_layout.ext - technology: sky130A

* .lib "/usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt"


**  in1 = vnegative and in2 = vpositive
.subckt opamp_sky130 in1 in2 out2 vdd vss 

X0 a_181_n17# in1 a_n28_306# vss sky130_fd_pr__nfet_01v8 w=1.79 l=1.00
X1 vss a_n292_n2092# out2 vss sky130_fd_pr__nfet_01v8 w=62.89 l=1.00
X2 vss a_n292_n2092# a_n292_n2092# vss sky130_fd_pr__nfet_01v8 w=10.01 l=1.00
X3 out2 a_582_n17# vdd vdd sky130_fd_pr__pfet_01v8 w=62.89 l=1.00
X4 a_n516_n998# vdd vss sky130_fd_pr__res_generic_nd w=27 l=2492
X5 a_582_n17# a_n28_306# vdd vdd sky130_fd_pr__pfet_01v8 w=10.01 l=1.00
X6 vdd a_n28_306# a_n28_306# vdd sky130_fd_pr__pfet_01v8 w=10.01 l=1.00
X7 a_582_n17# in2 a_181_n17# vss sky130_fd_pr__nfet_01v8 w=1.79 l=1.00
X8 a_n292_n2092# a_n368_n1009# vss sky130_fd_pr__res_generic_nd w=26 l=2494
X9 a_n368_n1009# a_n440_1511# vss sky130_fd_pr__res_generic_nd w=27 l=2492
X10 a_n516_n998# a_n440_1511# vss sky130_fd_pr__res_generic_nd w=27 l=2492
X11 vss a_n292_n2092# a_181_n17# vss sky130_fd_pr__nfet_01v8 w=20.02 l=1.00

C0 vss vss 3.31fF
C1 a_n292_n2092# vss 5.57fF
C2 a_n368_n1009# vss 3.47fF
C3 vdd vss 124.25fF

.ends
