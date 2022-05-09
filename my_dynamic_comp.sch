v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 180 -20 180 0 {
lab=#net1}
N 60 -20 180 -20 {
lab=#net1}
N 60 -60 60 -20 {
lab=#net1}
N 180 -20 310 -20 {
lab=#net1}
N 310 -60 310 -20 {
lab=#net1}
N 310 -160 310 -120 {
lab=#net2}
N 60 -160 60 -120 {
lab=#net3}
N 180 60 180 100 {
lab=GND}
N -40 -90 20 -90 {
lab=INN}
N 350 -90 410 -90 {
lab=INP}
N 60 -270 60 -220 {
lab=OUTN}
N 310 -270 310 -220 {
lab=OUTP}
N -120 -240 60 -240 {
lab=OUTN}
N -120 -270 -120 -240 {
lab=OUTN}
N -120 -400 -120 -330 {
lab=VDD}
N -120 -400 500 -400 {
lab=VDD}
N 500 -400 500 -330 {
lab=VDD}
N 310 -400 310 -330 {
lab=VDD}
N 60 -400 60 -330 {
lab=VDD}
N 180 -440 180 -400 {
lab=VDD}
N 100 -300 140 -300 {
lab=OUTP}
N 140 -300 140 -190 {
lab=OUTP}
N 100 -190 140 -190 {
lab=OUTP}
N 220 -300 270 -300 {
lab=OUTN}
N 220 -300 220 -190 {
lab=OUTN}
N 220 -190 270 -190 {
lab=OUTN}
N 60 -240 220 -240 {
lab=OUTN}
N 500 -270 500 -260 {
lab=OUTP}
N 310 -260 500 -260 {
lab=OUTP}
N 150 -260 310 -260 {
lab=OUTP}
N 140 -260 150 -260 {
lab=OUTP}
N -210 -300 -160 -300 {
lab=CLK}
N 90 30 140 30 {
lab=CLK}
N 540 -300 590 -300 {
lab=CLK}
N -40 -240 -40 -230 {
lab=OUTN}
N -40 -230 -40 -220 {
lab=OUTN}
N 420 -260 420 -230 {
lab=OUTP}
N -120 -300 -80 -300 {
lab=VDD}
N -80 -400 -80 -300 {
lab=VDD}
N 30 -300 60 -300 {
lab=VDD}
N 30 -400 30 -300 {
lab=VDD}
N 310 -300 360 -300 {
lab=VDD}
N 360 -400 360 -300 {
lab=VDD}
N 470 -300 500 -300 {
lab=VDD}
N 470 -400 470 -300 {
lab=VDD}
N -0 -190 60 -190 {
lab=GND}
N -0 -190 0 100 {
lab=GND}
N 0 100 380 100 {
lab=GND}
N 380 -190 380 100 {
lab=GND}
N 310 -190 380 -190 {
lab=GND}
N 270 -90 310 -90 {
lab=GND}
N 270 -90 270 100 {
lab=GND}
N 60 -90 110 -90 {
lab=GND}
N 110 -90 110 100 {
lab=GND}
N 180 30 210 30 {
lab=GND}
N 210 30 210 100 {
lab=GND}
N -180 30 90 30 {
lab=CLK}
N -180 -300 -180 30 {
lab=CLK}
N -180 -370 -180 -300 {
lab=CLK}
N -180 -370 590 -370 {
lab=CLK}
N 590 -370 590 -300 {
lab=CLK}
C {ipin.sym} -30 -90 0 0 {name=p1 lab=INN
}
C {ipin.sym} 400 -90 0 1 {name=p2 lab=INP
}
C {gnd.sym} 180 100 0 0 {name=l1 lab=GND}
C {vdd.sym} 180 -440 0 0 {name=l2 lab=VDD}
C {opin.sym} 420 -240 1 0 {name=p6 lab=OUTP}
C {opin.sym} -40 -230 1 0 {name=p7 lab=OUTN}
C {ipin.sym} -200 -300 0 0 {name=p4 lab=CLK}
C {xschem_sky130/sky130_fd_pr/pfet_01v8_lvt.sym} -140 -300 0 0 {name=M6
L=0.35
W=1
nf=1
mult=8
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/pfet_01v8_lvt.sym} 80 -300 0 1 {name=M7
L=0.35
W=1
nf=1
mult=12
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/pfet_01v8_lvt.sym} 290 -300 0 0 {name=M8
L=0.35
W=1
nf=1
mult=12
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/pfet_01v8_lvt.sym} 520 -300 0 1 {name=M9
L=0.35
W=1
nf=1
mult=8
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/nfet_01v8_lvt.sym} 80 -190 0 1 {name=M1
L=0.15
W=1
nf=1
mult=8
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/nfet_01v8_lvt.sym} 290 -190 0 0 {name=M2
L=0.15
W=1
nf=1
mult=8
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/nfet_01v8_lvt.sym} 40 -90 0 0 {name=M3
L=0.15
W=1
nf=1
mult=12
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/nfet_01v8_lvt.sym} 330 -90 0 1 {name=M4
L=0.15
W=1
nf=1
mult=12
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/nfet_01v8_lvt.sym} 160 30 0 0 {name=M5
L=0.15
W=1
nf=1
mult=12
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
