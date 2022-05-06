v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 220 -100 270 -100 {
lab=CLK}
N 150 -60 200 -60 {
lab=#net1}
N 220 -80 270 -80 {
lab=D}
N 460 -100 500 -100 {
lab=xxx}
N 450 -100 460 -100 {
lab=xxx}
N 50 -60 70 -60 {
lab=RESET}
N 200 -60 270 -60 {
lab=#net1}
C {xschem_sky130/sky130_stdcells/dfrtp_1.sym} 360 -80 0 0 {name=x50 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {xschem_sky130/sky130_stdcells/inv_1.sym} 110 -60 0 0 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {ipin.sym} 220 -100 0 0 {name=p1 lab=CLK}
C {ipin.sym} 220 -80 0 0 {name=p2 lab=D}
C {ipin.sym} 50 -60 0 0 {name=p3 lab=RESET}
C {opin.sym} 500 -100 0 0 {name=p4 lab=Q}
