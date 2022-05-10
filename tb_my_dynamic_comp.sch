v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 230 -10 270 -10 {
lab=#net1}
N -130 -10 -70 -10 {
lab=INP}
N -130 20 -70 20 {
lab=INN}
N -130 50 -70 50 {
lab=CLK}
N -210 -330 -210 -310 {
lab=INP}
N -210 -250 -210 -240 {
lab=GND}
N -210 -150 -210 -130 {
lab=INN}
N -210 -70 -210 -60 {
lab=GND}
N -210 -160 -210 -150 {
lab=INN}
N -210 -340 -210 -330 {
lab=INP}
N 20 -220 20 -190 {
lab=CLK}
N 20 -130 20 -120 {
lab=GND}
N -290 -220 -290 -190 {
lab=VDD}
N -290 -130 -290 -120 {
lab=GND}
N 270 -10 320 -10 {
lab=#net1}
N 270 80 320 80 {
lab=#net2}
N 450 -10 650 -10 {
lab=#net3}
N 450 80 650 80 {
lab=#net4}
N 510 190 510 210 {
lab=GND}
N 510 100 510 130 {
lab=#net4}
N 590 190 590 210 {
lab=GND}
N 590 -10 590 130 {
lab=#net3}
N 510 80 510 100 {
lab=#net4}
N 950 -10 990 -10 {
lab=VOUTN}
N 950 80 990 80 {
lab=VOUTP}
N 270 50 270 80 {
lab=#net2}
N 230 50 270 50 {
lab=#net2}
N 80 100 80 110 {
lab=GND}
N 80 -90 80 -60 {
lab=VDD}
C {ipin.sym} -120 20 0 0 {name=p2 lab=INN}
C {ipin.sym} -120 -10 0 0 {name=p3 lab=INP}
C {vsource.sym} -210 -280 0 0 {name=V1 value="DC pulse(0.875 0.925 0 1000n 0 0 1000n)"}
C {gnd.sym} -210 -240 0 0 {name=l1 lab=GND}
C {opin.sym} -210 -330 3 0 {name=p6 lab=INP
}
C {vsource.sym} -210 -100 0 0 {name=V2 value="DC pulse(0.925 0.875 0 1000n 0 0 1000n)"}
C {gnd.sym} -210 -60 0 0 {name=l2 lab=GND}
C {opin.sym} -210 -150 3 0 {name=p7 lab=INN

}
C {vsource.sym} 20 -160 0 0 {name=V3 value="DC pulse(0 1.8 1n 60p 60p 5n 10n)"}
C {gnd.sym} 20 -120 0 0 {name=l3 lab=GND}
C {opin.sym} 20 -210 3 0 {name=p8 lab=CLK

}
C {code.sym} 290 -240 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
*.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__cap_mim_m3_1.model.spice

"
spice_ignore=false}
C {ipin.sym} -120 50 0 0 {name=p1 lab=CLK}
C {vsource.sym} -290 -160 0 0 {name=V4 value=1.8
}
C {gnd.sym} -290 -120 0 0 {name=l4 lab=GND}
C {vdd.sym} -290 -220 0 0 {name=l5 lab=VDD}
C {code.sym} 450 -240 0 0 {name=control only_toplevel=false value="
.control
* Transient analysis
TRAN 1n 1u
save all
print INP INN OUTP OUTN
plot VOUTP VOUTN
meas tran offset find V(VINP,VINN) when V(VOUTP)=0.9

.endc
"}
C {not.sym} 470 -10 0 0 {name=x2}
C {not.sym} 470 80 0 0 {name=x3}
C {capa.sym} 510 160 0 0 {name=C1
m=1
value=20f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 510 210 0 0 {name=l6 lab=GND}
C {capa.sym} 590 160 0 0 {name=C2
m=1
value=20f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 590 210 0 0 {name=l7 lab=GND}
C {my_sr_latch.sym} 800 70 0 0 {name=x4}
C {opin.sym} 990 -10 0 0 {name=p4 lab=VOUTN}
C {opin.sym} 990 80 0 0 {name=p5 lab=VOUTP}
C {my_dynamic_comparator2.sym} 80 20 0 0 {name=x1}
C {gnd.sym} 80 110 0 0 {name=l8 lab=GND}
C {vdd.sym} 80 -90 0 0 {name=l9 lab=VDD}
