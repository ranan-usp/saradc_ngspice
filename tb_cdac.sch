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
N 610 -430 650 -430 {
lab=xxx}
N 190 -170 310 -170 {
lab=#net1}
N 120 -190 310 -190 {
lab=#net2}
N 50 -210 310 -210 {
lab=#net3}
N -10 -230 310 -230 {
lab=#net4}
N -80 -250 310 -250 {
lab=#net5}
N -200 -290 310 -290 {
lab=#net7}
N -270 -310 310 -310 {
lab=#net8}
N -400 -350 310 -350 {
lab=#net10}
N -470 -370 310 -370 {
lab=#net11}
N -540 -390 310 -390 {
lab=#net12}
N -670 -430 310 -430 {
lab=#net14}
N 290 -130 310 -130 {
lab=#net15}
N 220 -150 310 -150 {
lab=GND}
N 270 -130 270 -120 {
lab=#net15}
N 270 -130 290 -130 {
lab=#net15}
N 270 -60 270 -30 {
lab=GND}
N 220 -150 220 -30 {
lab=GND}
N 160 -90 160 -70 {
lab=GND}
N 160 -170 160 -150 {
lab=#net1}
N 160 -170 190 -170 {
lab=#net1}
N 120 -110 120 -90 {
lab=GND}
N 120 -190 120 -170 {
lab=#net1}
N 50 -130 50 -110 {
lab=GND}
N 50 -210 50 -190 {
lab=#net1}
N -10 -150 -10 -130 {
lab=GND}
N -10 -230 -10 -210 {
lab=#net1}
N -80 -170 -80 -150 {
lab=GND}
N -80 -250 -80 -230 {
lab=#net1}
N -140 -190 -140 -170 {
lab=GND}
N -140 -270 -140 -250 {
lab=#net1}
N -140 -270 310 -270 {}
N -200 -210 -200 -190 {
lab=GND}
N -200 -290 -200 -270 {
lab=#net1}
N -270 -230 -270 -210 {
lab=GND}
N -270 -310 -270 -290 {
lab=#net1}
N -350 -250 -350 -230 {
lab=GND}
N -350 -330 -350 -310 {
lab=#net1}
N -350 -330 310 -330 {}
N -400 -270 -400 -250 {
lab=GND}
N -400 -350 -400 -330 {
lab=#net1}
N -470 -290 -470 -270 {
lab=GND}
N -470 -370 -470 -350 {
lab=#net1}
N -540 -310 -540 -290 {
lab=GND}
N -540 -390 -540 -370 {
lab=#net1}
N -620 -330 -620 -310 {
lab=GND}
N -620 -410 -620 -390 {
lab=#net1}
N -620 -410 310 -410 {}
N -670 -350 -670 -330 {
lab=GND}
N -670 -430 -670 -410 {
lab=#net1}
C {my_cdac.sym} 460 -280 0 0 {name=x1}
C {opin.sym} 650 -430 0 0 {name=p1 lab=xxx}
C {code.sym} -30 -615 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {code.sym} 130 -615 0 0 {name=STIMULI 
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
C {vsource.sym} 270 -90 0 0 {name=V1 value="pulse(0 1 0 12.8u 0 0.2u 13u)"}
C {gnd.sym} 270 -30 0 0 {name=l1 lab=GND}
C {gnd.sym} 220 -30 0 0 {name=l2 lab=GND}
C {gnd.sym} 160 -70 0 0 {name=l26 lab=GND}
C {vsource.sym} 160 -120 0 0 {name=V2 value="pulse(0 1.8 0 30p 30p 5.555n 11.11n)"}
C {gnd.sym} 120 -90 0 0 {name=l3 lab=GND}
C {vsource.sym} 120 -140 0 0 {name=V3 value="pulse(0 1.8 0 30p 30p 5.555n 11.11n)"}
C {gnd.sym} 50 -110 0 0 {name=l4 lab=GND}
C {vsource.sym} 50 -160 0 0 {name=V4 value="pulse(0 1.8 0 30p 30p 5.555n 11.11n)"}
C {gnd.sym} -10 -130 0 0 {name=l5 lab=GND}
C {vsource.sym} -10 -180 0 0 {name=V5 value="pulse(0 1.8 0 30p 30p 5.555n 11.11n)"}
C {gnd.sym} -80 -150 0 0 {name=l6 lab=GND}
C {vsource.sym} -80 -200 0 0 {name=V6 value="pulse(0 1.8 0 30p 30p 5.555n 11.11n)"}
C {gnd.sym} -140 -170 0 0 {name=l7 lab=GND}
C {vsource.sym} -140 -220 0 0 {name=V7 value="pulse(0 1.8 0 30p 30p 5.555n 11.11n)"}
C {gnd.sym} -200 -190 0 0 {name=l8 lab=GND}
C {vsource.sym} -200 -240 0 0 {name=V8 value="pulse(0 1.8 0 30p 30p 5.555n 11.11n)"}
C {gnd.sym} -270 -210 0 0 {name=l9 lab=GND}
C {vsource.sym} -270 -260 0 0 {name=V9 value="pulse(0 1.8 0 30p 30p 5.555n 11.11n)"}
C {gnd.sym} -350 -230 0 0 {name=l10 lab=GND}
C {vsource.sym} -350 -280 0 0 {name=V10 value="pulse(0 1.8 0 30p 30p 5.555n 11.11n)"}
C {gnd.sym} -400 -250 0 0 {name=l11 lab=GND}
C {vsource.sym} -400 -300 0 0 {name=V11 value="pulse(0 1.8 0 30p 30p 5.555n 11.11n)"}
C {gnd.sym} -470 -270 0 0 {name=l12 lab=GND}
C {vsource.sym} -470 -320 0 0 {name=V12 value="pulse(0 1.8 0 30p 30p 5.555n 11.11n)"}
C {gnd.sym} -540 -290 0 0 {name=l13 lab=GND}
C {vsource.sym} -540 -340 0 0 {name=V13 value="pulse(0 1.8 0 30p 30p 5.555n 11.11n)"}
C {gnd.sym} -620 -310 0 0 {name=l14 lab=GND}
C {vsource.sym} -620 -360 0 0 {name=V14 value="pulse(0 1.8 0 30p 30p 5.555n 11.11n)"}
C {gnd.sym} -670 -330 0 0 {name=l15 lab=GND}
C {vsource.sym} -670 -380 0 0 {name=V15 value="pulse(0 1.8 0 30p 30p 5.555n 11.11n)"}
