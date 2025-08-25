v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 120 -230 120 -190 {lab=V_in}
N 120 -130 120 -110 {lab=GND}
N 560 -240 700 -240 {lab=V_out}
N 500 -370 500 -330 {lab=GND}
N 430 -450 500 -450 {lab=#net1}
N 500 -450 500 -430 {lab=#net1}
N 410 -450 430 -450 {lab=#net1}
N 400 -450 400 -310 {lab=#net1}
N 120 -240 310 -240 {lab=V_in}
N 120 -240 120 -230 {lab=V_in}
N 520 -240 560 -240 {lab=V_out}
N 400 -310 400 -280 {lab=#net1}
N 400 -450 410 -450 {lab=#net1}
N 500 -240 520 -240 {lab=V_out}
C {code_shown.sym} 930 -340 0 0 {name=s1 only_toplevel=false value="
.option savecurrents
.temp 27

.control
  save all
  op

  dc Vin 0 1.8 0.001

  plot (V_out)
  plor (i(VDD))

.endc

"}
C {devices/code.sym} 910 -510 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {vsource.sym} 120 -160 0 0 {name=Vin value="DC 0 AC 1" savecurrent=false}
C {gnd.sym} 120 -110 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 700 -240 0 1 {name=p1 sig_type=std_logic lab=V_out}
C {vsource.sym} 500 -400 0 0 {name=Vdd value=0.9 savecurrent=false}
C {gnd.sym} 500 -330 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 120 -240 0 0 {name=p2 sig_type=std_logic lab=V_in}
C {/foss/designs/Analog_to_Spike/Schematic/HPF.sym} 400 -230 0 0 {name=x1}
