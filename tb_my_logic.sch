v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 70 -100 120 -100 {
lab=COMP_EN}
N 70 -80 120 -80 {
lab=Q00}
N 70 -60 120 -60 {
lab=Q01}
N 70 -40 120 -40 {
lab=Q02}
N 70 -20 120 -20 {
lab=Q03}
N 70 0 120 0 {
lab=Q04}
N 70 20 120 20 {
lab=Q05}
N 70 40 120 40 {
lab=Sample}
N 70 60 120 60 {
lab=SW0}
N 70 80 120 80 {
lab=SW0B}
N 70 100 120 100 {
lab=SW1}
N 70 120 120 120 {
lab=SW1B}
N 70 140 120 140 {
lab=SW2}
N 70 160 120 160 {
lab=SW2B}
N 70 180 120 180 {
lab=SW3}
N 70 200 120 200 {
lab=SW3B}
N 70 220 120 220 {
lab=SW4}
N 70 240 120 240 {
lab=SW4B}
N 70 260 120 260 {
lab=SW5}
N 70 280 120 280 {
lab=SW5B}
N -620 100 -620 130 { lab=CLK}
N -620 100 -550 100 { lab=CLK}
N -290 70 -230 70 {
lab=CLK}
N -620 250 -620 280 { lab=COMP_IN}
N -620 250 -550 250 { lab=COMP_IN}
N -290 110 -230 110 {
lab=COMP_IN}
N -740 -70 -740 -40 { lab=VDD}
C {my_sar_logic.sym} -80 90 0 0 {name=x1}
C {lab_wire.sym} 120 -100 0 1 {name=l1 sig_type=std_logic lab=COMP_EN}
C {lab_wire.sym} 120 -80 0 1 {name=l2 sig_type=std_logic lab=Q00
}
C {lab_wire.sym} 120 -60 0 1 {name=l3 sig_type=std_logic lab=Q01}
C {lab_wire.sym} 120 -40 0 1 {name=l4 sig_type=std_logic lab=Q02}
C {lab_wire.sym} 120 -20 0 1 {name=l5 sig_type=std_logic lab=Q03}
C {lab_wire.sym} 120 0 0 1 {name=l6 sig_type=std_logic lab=Q04}
C {lab_wire.sym} 120 20 0 1 {name=l7 sig_type=std_logic lab=Q05}
C {lab_wire.sym} 120 40 0 1 {name=l8 sig_type=std_logic lab=Sample}
C {lab_wire.sym} 120 60 0 1 {name=l9 sig_type=std_logic lab=SW0}
C {lab_wire.sym} 120 80 0 1 {name=l10 sig_type=std_logic lab=SW0B}
C {lab_wire.sym} 120 100 0 1 {name=l11 sig_type=std_logic lab=SW1}
C {lab_wire.sym} 120 120 0 1 {name=l12 sig_type=std_logic lab=SW1B}
C {lab_wire.sym} 120 140 0 1 {name=l13 sig_type=std_logic lab=SW2}
C {lab_wire.sym} 120 160 0 1 {name=l14 sig_type=std_logic lab=SW2B}
C {lab_wire.sym} 120 180 0 1 {name=l15 sig_type=std_logic lab=SW3}
C {lab_wire.sym} 120 200 0 1 {name=l16 sig_type=std_logic lab=SW3B}
C {lab_wire.sym} 120 220 0 1 {name=l17 sig_type=std_logic lab=SW4}
C {lab_wire.sym} 120 240 0 1 {name=l18 sig_type=std_logic lab=SW4B}
C {lab_wire.sym} 120 260 0 1 {name=l19 sig_type=std_logic lab=SW5}
C {lab_wire.sym} 120 280 0 1 {name=l20 sig_type=std_logic lab=SW5B}
C {devices/vsource.sym} -620 160 0 0 {name=V6 value="pulse 0 1.8 0 .1n .1n 9.9n 20n"}
C {devices/gnd.sym} -620 190 0 0 {name=l21 lab=GND}
C {devices/lab_pin.sym} -550 100 0 1 {name=l22 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} -290 70 0 0 {name=l23 sig_type=std_logic lab=CLK}
C {devices/vsource.sym} -620 310 0 0 {name=V1 value="pulse 0 1.8 10n .1n .1n 9.9n 100n"}
C {devices/gnd.sym} -620 340 0 0 {name=l24 lab=GND}
C {devices/lab_pin.sym} -550 250 0 1 {name=l25 sig_type=std_logic lab=COMP_IN}
C {devices/lab_pin.sym} -290 110 0 0 {name=l26 sig_type=std_logic lab=COMP_IN}
C {code.sym} 90 390 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {code.sym} 250 390 0 0 {name=STIMULI 
only_toplevel=true
value="
.options acct list
.temp 25

.tran 1n 1u
.control
.write tb_saradc.raw
.endc
"
}
C {vdd.sym} -740 -70 0 0 {name=l27 lab=VDD}
C {devices/vsource.sym} -740 -10 0 0 {name=V2 value=1.8}
C {devices/gnd.sym} -740 20 0 0 {name=l28 lab=GND}
