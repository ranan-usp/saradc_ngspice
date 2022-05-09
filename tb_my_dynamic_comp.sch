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
N 230 30 270 30 {
lab=#net1}
N 230 -10 270 -10 {
lab=#net2}
N -130 -20 -70 -20 {
lab=INP}
N -130 10 -70 10 {
lab=INN}
N -130 40 -70 40 {
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
N 450 -10 490 -10 {
lab=OUTP}
N 270 -10 320 -10 {
lab=#net2}
N 450 100 490 100 {
lab=OUTN}
N 270 100 320 100 {
lab=#net1}
N 270 30 270 100 {
lab=#net1}
C {my_dynamic_comp.sym} 80 10 0 0 {name=x1}
C {ipin.sym} -120 10 0 0 {name=p2 lab=INN}
C {ipin.sym} -120 -20 0 0 {name=p3 lab=INP}
C {opin.sym} 480 -10 0 0 {name=p4 lab=OUTP
}
C {opin.sym} 480 100 0 0 {name=p5 lab=OUTN}
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
.lib $::SKYWATER_MODELS/models/sky130.lib.spice tt
*.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
*.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__cap_mim_m3_1.model.spice

"
spice_ignore=false}
C {ipin.sym} -120 40 0 0 {name=p1 lab=CLK}
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
plot OUTP OUTN

.endc
"}
C {not.sym} 470 -10 0 0 {name=x2}
C {not.sym} 470 100 0 0 {name=x3}
