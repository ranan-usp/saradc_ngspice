v {xschem version=3.0.0 file_version=1.2 

* Copyright 2021 Stefan Frederik Schippers
* 
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.

}
G {}
K {}
V {}
S {}
E {}
N 70 -40 70 -0 {
lab=#net1}
N 70 -40 170 -40 {
lab=#net1}
N 170 -40 170 -0 {
lab=#net1}
N 120 -120 230 -120 {
lab=xxx}
N 70 110 70 210 {
lab=GND}
N 190 110 190 290 {
lab=VIN}
N 90 110 90 150 {
lab=COMP_ENB}
N 170 110 170 150 {
lab=Sample}
N -10 290 190 290 {
lab=VIN}
N 380 220 400 220 {
lab=VIN}
N 360 220 360 230 {
lab=VIN}
N 360 220 380 220 {
lab=VIN}
N 360 290 360 320 {
lab=GND}
N 580 270 580 290 {
lab=GND}
N 580 190 580 210 {
lab=COMP_ENB}
N 580 190 610 190 {
lab=COMP_ENB}
N 580 420 580 440 {
lab=GND}
N 580 340 580 360 {
lab=SAMPLE}
N 580 340 610 340 {
lab=SAMPLE}
N 120 -120 120 -110 {
lab=xxx}
N 120 -50 120 -40 {
lab=#net1}
N 220 -50 220 -40 {
lab=GND}
N 220 -120 220 -110 {
lab=xxx}
C {analog_switch.sym} 80 -40 3 0 {name=x1}
C {analog_switch.sym} 180 -40 3 0 {name=x2}
C {opin.sym} 230 -120 0 0 {name=p1 lab=xxx}
C {ipin.sym} -10 290 0 0 {name=p3 lab=VIN}
C {ipin.sym} 90 140 3 0 {name=p4 lab=COMP_ENB}
C {ipin.sym} 170 140 3 0 {name=p5 lab=Sample}
C {vsource.sym} 360 260 0 0 {name=V1 value="pulse(0 1 0 12.8u 0 0.2u 13u)"}
C {gnd.sym} 360 320 0 0 {name=l1 lab=GND}
C {gnd.sym} 70 210 0 0 {name=l2 lab=GND}
C {opin.sym} 400 220 0 0 {name=p7 lab=VIN}
C {gnd.sym} 580 290 0 0 {name=l15 lab=GND}
C {vsource.sym} 580 240 0 0 {name=V15 value="pulse(0 1.8 0 30p 30p 5.555n 11.11n)"}
C {opin.sym} 610 190 0 0 {name=p8 lab=COMP_ENB}
C {gnd.sym} 580 440 0 0 {name=l3 lab=GND}
C {vsource.sym} 580 390 0 0 {name=V2 value="pulse(0 1.8 30p 30p 30p 5.555n 11.11n)"}
C {opin.sym} 610 340 0 0 {name=p9 lab=SAMPLE}
C {code.sym} 330 -5 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {code.sym} 490 -5 0 0 {name=STIMULI 
only_toplevel=true
value="
.options acct list
.temp 25
.control
tran 100n 13u
write tb_saradc.raw
.endc
"
}
C {xschem_sky130/sky130_fd_pr/cap_mim_m3_1.sym} 120 -80 0 0 {name=C1 model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
C {xschem_sky130/sky130_fd_pr/cap_mim_m3_1.sym} 120 -80 0 0 {name=C2 model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
C {xschem_sky130/sky130_fd_pr/cap_mim_m3_1.sym} 220 -80 0 0 {name=C3 model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
C {gnd.sym} 220 -40 0 0 {name=l4 lab=GND}
