v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 80 -60 80 -50 {
lab=VDD}
N 80 10 80 20 {
lab=GND}
N 40 -20 60 -20 {
lab=GND}
N 40 -20 40 20 {
lab=GND}
N 40 20 80 20 {
lab=GND}
C {vdd.sym} 80 -60 0 0 {name=l1 lab=VDD}
C {gnd.sym} 80 20 0 0 {name=l2 lab=GND}
C {sky130_fd_pr/res_high_po.sym} 80 -20 0 0 {name=R1
W=1
L=1
model=res_high_po
spiceprefix=X
mult=1}
