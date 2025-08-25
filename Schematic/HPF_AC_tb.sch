v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 150 -240 150 -200 {lab=V_in}
N 150 -140 150 -120 {lab=GND}
N 590 -260 730 -260 {lab=V_out}
N 530 -380 530 -340 {lab=GND}
N 460 -460 530 -460 {lab=#net1}
N 530 -460 530 -440 {lab=#net1}
N 440 -460 460 -460 {lab=#net1}
N 440 -460 440 -320 {lab=#net1}
N 440 -320 440 -300 {lab=#net1}
N 210 -260 350 -260 {lab=V_in}
N 150 -260 210 -260 {lab=V_in}
N 150 -260 150 -240 {lab=V_in}
N 540 -260 590 -260 {lab=V_out}
C {vsource.sym} 150 -170 0 0 {name=Vin value="DC 0 AC 1" savecurrent=false}
C {gnd.sym} 150 -120 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 730 -260 0 1 {name=p1 sig_type=std_logic lab=V_out}
C {code_shown.sym} 930 -340 0 0 {name=s1 only_toplevel=false value="
.option savecurrents
.temp 27

.control
  save all
  op

  ac dec 200 0.1 1e6
  plot v_out
  *plot db((v(v_out))/(v(v_plus)-v(v_minus))) ph((v(v_out))/(v(v_plus)-v(v_minus))) xlog 
  plot db((v(v_out))/(v(v_in))) ph((v(v_out))/(v(v_in))) xlog 
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
C {vsource.sym} 530 -410 0 0 {name=Vdd value=0.9 savecurrent=false}
C {gnd.sym} 530 -340 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 150 -260 0 0 {name=p2 sig_type=std_logic lab=V_in}
C {/foss/designs/Analog_to_Spike/Schematic/HPF.sym} 440 -250 0 0 {name=x1}
