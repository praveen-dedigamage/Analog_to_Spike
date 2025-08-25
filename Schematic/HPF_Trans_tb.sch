v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 180 -260 180 -220 {lab=V_in}
N 180 -160 180 -140 {lab=GND}
N 620 -280 760 -280 {lab=V_out}
N 560 -400 560 -360 {lab=GND}
N 490 -480 560 -480 {lab=#net1}
N 560 -480 560 -460 {lab=#net1}
N 470 -480 490 -480 {lab=#net1}
N 470 -480 470 -340 {lab=#net1}
N 470 -340 470 -320 {lab=#net1}
N 180 -280 320 -280 {lab=V_in}
N 320 -280 380 -280 {lab=V_in}
N 180 -280 180 -260 {lab=V_in}
N 570 -280 620 -280 {lab=V_out}
C {vsource.sym} 180 -190 0 0 {name=Vin value="DC 0 AC 0.5 SIN(0.9 5e-6 1 1 0 0)" savecurrent=false}
C {devices/code.sym} 910 -510 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {code_shown.sym} 920 -340 0 0 {name=s2 only_toplevel=false value="
.option savecurrents
.temp 27

.control
  save all
  tran 0.001 10

  plot v(V_in) v(V_out) 
.endc

"}
C {gnd.sym} 180 -140 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 760 -280 0 1 {name=p1 sig_type=std_logic lab=V_out}
C {vsource.sym} 560 -430 0 0 {name=Vdd value=0.9 savecurrent=false}
C {gnd.sym} 560 -360 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 180 -280 0 0 {name=p2 sig_type=std_logic lab=V_in}
C {/foss/designs/Analog_to_Spike/Schematic/HPF.sym} 470 -270 0 0 {name=x1}
