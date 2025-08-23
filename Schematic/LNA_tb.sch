v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 790 -200 790 -170 {lab=GND}
N 790 -220 890 -220 {lab=#net1}
N 790 -330 790 -240 {lab=Vdd}
N 1070 -460 1070 -440 {lab=Vdd}
N 1070 -380 1070 -360 {lab=GND}
N 910 -160 910 -140 {lab=Vout}
N 910 -140 1020 -140 {lab=Vout}
N 440 -240 490 -240 {lab=Vin}
N 890 -220 910 -220 {lab=#net1}
C {devices/code.sym} 510 -650 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/title.sym} 160 30 0 0 {name=l1 author="Praveen"}
C {gnd.sym} 790 -170 0 0 {name=l2 lab=GND}
C {vsource.sym} 1070 -410 0 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} 1070 -360 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 1070 -460 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {sky130_fd_pr/cap_mim_m3_1.sym} 910 -190 0 0 {name=C1 model=cap_mim_m3_1 W=1 L=1 MF=100 spiceprefix=X}
C {lab_pin.sym} 790 -330 0 0 {name=p3 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 1020 -140 0 1 {name=p2 sig_type=std_logic lab=Vout}
C {lab_pin.sym} 440 -240 0 0 {name=p4 sig_type=std_logic lab=Vin}
C {code_shown.sym} 20 -670 0 0 {name=s1 only_toplevel=false value="
.option savecurrents
.temp 27
.param VOFF=0

Vin vin 0 SIN(\{VOFF\} 0.01 100 0 0)
	

.control
 
save all
alterparam VOFF= 1.4
tran 1u 400m
plot vin vout
.endc"
}
C {/foss/designs/Analog_to_Spike/Schematic/LNA.sym} 640 -220 0 0 {name=x1}
