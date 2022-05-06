v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 420 -540 470 -540 {
lab=CLK}
N 420 -500 470 -500 {
lab=#net1}
N 420 -520 470 -520 {
lab=D}
N 660 -540 700 -540 {
lab=OUT}
N 650 -540 660 -540 {
lab=OUT}
N 100 -360 100 -350 {
lab=VDD}
N 100 -290 100 -270 {
lab=GND}
N 440 -450 440 -420 { lab=D}
N 440 -450 510 -450 { lab=D}
N 690 -450 690 -420 { lab=CLK}
N 690 -450 760 -450 { lab=CLK}
N 260 -310 260 -280 { lab=R}
N 260 -310 330 -310 { lab=R}
N 320 -500 340 -500 {
lab=R}
C {code.sym} 630 -240 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {code.sym} 790 -240 0 0 {name=STIMULI 
only_toplevel=true
value="
.options acct list
.temp 25

.tran 1n 0.1u
.control
.write tb_saradc.raw
.endc
"
}
C {xschem_sky130/sky130_stdcells/dfrtp_1.sym} 560 -520 0 0 {name=x50 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {lab_wire.sym} 420 -540 0 0 {name=l1 sig_type=std_logic lab=CLK}
C {lab_wire.sym} 320 -500 0 0 {name=l6 sig_type=std_logic lab=R}
C {lab_wire.sym} 420 -520 0 0 {name=l7 sig_type=std_logic lab=D}
C {lab_wire.sym} 700 -540 0 1 {name=l8 sig_type=std_logic lab=OUT}
C {vdd.sym} 100 -360 0 0 {name=l10 lab=VDD}
C {vsource.sym} 100 -320 0 0 {name=V4 value=1.8}
C {gnd.sym} 100 -270 0 0 {name=l11 lab=GND}
C {devices/vsource.sym} 440 -390 0 0 {name=V5 value="pulse 0 1.8 15n .1n .1n 19.9n 40n"}
C {devices/gnd.sym} 440 -360 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} 510 -450 0 1 {name=l12 sig_type=std_logic lab=D}
C {devices/vsource.sym} 690 -390 0 0 {name=V6 value="pulse 0 1.8 10n .1n .1n 9.9n 20n"}
C {devices/gnd.sym} 690 -360 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} 760 -450 0 1 {name=l14 sig_type=std_logic lab=CLK}
C {devices/vsource.sym} 260 -250 0 0 {name=V1 value="pulse 0 1.8 5n .1n .1n 19.9n 40n"}
C {devices/gnd.sym} 260 -220 0 0 {name=l20 lab=GND}
C {devices/lab_pin.sym} 330 -310 0 1 {name=l21 sig_type=std_logic lab=R}
C {xschem_sky130/sky130_stdcells/inv_1.sym} 380 -500 0 0 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
