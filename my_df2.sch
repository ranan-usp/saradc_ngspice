v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -110 20 -60 20 {
lab=CLK}
N -180 60 -130 60 {
lab=#net1}
N -110 40 -60 40 {
lab=D}
N -280 60 -260 60 {
lab=RESET}
N -130 60 -60 60 {
lab=#net1}
N 130 20 170 20 {
lab=Q}
N 120 20 130 20 {
lab=Q}
N 130 40 170 40 {
lab=Q}
N 120 40 130 40 {
lab=Q}
C {xschem_sky130/sky130_stdcells/dfrbp_1.sym} 30 40 0 0 {name=x28 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {xschem_sky130/sky130_stdcells/inv_1.sym} -220 60 0 0 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {ipin.sym} -110 20 0 0 {name=p1 lab=CLK}
C {ipin.sym} -110 40 0 0 {name=p2 lab=D}
C {ipin.sym} -280 60 0 0 {name=p3 lab=RESET}
C {opin.sym} 170 20 0 0 {name=p4 lab=Q}
C {opin.sym} 170 40 0 0 {name=p5 lab=Q_N}
