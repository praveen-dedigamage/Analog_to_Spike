v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 170 -430 170 -410 {lab=GND}
N 100 -430 100 -410 {lab=GND}
N 170 -510 170 -490 {lab=vdd}
N 100 -510 100 -490 {lab=vin}
N 250 -430 250 -410 {lab=GND}
N 250 -510 250 -490 {lab=vss}
N 1220 -350 1290 -350 {lab=Vout}
N 340 -430 340 -410 {lab=GND}
N 340 -510 340 -490 {lab=MINUS}
N 460 -150 510 -150 {lab=vss}
N 470 -190 510 -190 {lab=vss}
N 470 -190 470 -150 {lab=vss}
N 490 -170 510 -170 {lab=vdd}
N 470 -210 510 -210 {lab=ADJ}
N 500 -170 500 -110 {lab=vdd}
N 670 -280 1220 -350 {lab=Vout}
N 460 -250 510 -250 {lab=MINUS}
N 460 -310 510 -310 {lab=vin}
N 340 -520 340 -510 {lab=MINUS}
N 500 -110 500 -70 {lab=vdd}
N 300 -140 300 -120 {lab=GND}
N 300 -220 300 -200 {lab=ADJ}
N 300 -230 300 -220 {lab=ADJ}
N 300 -140 300 -120 {lab=GND}
N 300 -220 300 -200 {lab=ADJ}
N 300 -230 300 -220 {lab=ADJ}
C {devices/title.sym} 160 30 0 0 {name=l1 author="Praveen"}
C {vsource.sym} 100 -460 0 0 {name=Vin value=0 savecurrent=false}
C {vsource.sym} 170 -460 0 0 {name=Vdd value=1.8 savecurrent=false}
C {gnd.sym} 170 -410 0 0 {name=l3 lab=GND}
C {gnd.sym} 100 -410 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 100 -510 0 0 {name=p1 sig_type=std_logic lab=vin}
C {lab_pin.sym} 170 -510 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {devices/code.sym} 70 -300 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {code_shown.sym} 60 -870 0 0 {name=s1 only_toplevel=false value="
.option savecurrents
.temp 27

.control
save all
op

dc vin 0 1.8 0.01

plot vin vout

plot -i(vdd)

.endc"}
C {gnd.sym} 250 -410 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 250 -510 0 0 {name=p7 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 460 -150 0 0 {name=p24 lab=vss}
C {devices/lab_pin.sym} 1290 -350 0 1 {name=l10 lab=Vout}
C {vsource.sym} 340 -460 0 0 {name=Vminus value=0 savecurrent=false}
C {gnd.sym} 340 -410 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 460 -250 0 0 {name=l6 lab=MINUS}
C {vsource.sym} 250 -460 0 0 {name=Vss value=0 savecurrent=false}
C {sky130_tests/zero_opamp.sym} 590 -280 0 0 {name=x1}
C {lab_pin.sym} 460 -310 0 0 {name=p3 sig_type=std_logic lab=vin}
C {lab_pin.sym} 500 -70 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 340 -520 0 0 {name=l7 lab=MINUS}
C {gnd.sym} 300 -120 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 300 -230 0 0 {name=l9 lab=ADJ}
C {vsource.sym} 300 -170 0 0 {name=Vminus3 value=0.9 savecurrent=false}
C {gnd.sym} 300 -120 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} 470 -210 0 0 {name=l15 lab=ADJ}
