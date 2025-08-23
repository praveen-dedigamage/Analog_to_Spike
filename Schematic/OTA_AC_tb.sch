v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 270 -240 270 -190 {lab=V_MINUS}
N 430 -90 430 -60 {lab=GND}
N 270 -150 270 -120 {lab=GND}
N 150 -230 150 -200 {lab=GND}
N 540 -390 540 -360 {lab=GND}
N 430 -200 430 -150 {lab=#net1}
N 550 -280 590 -280 {lab=V_OUT}
N 430 -480 490 -480 {lab=#net2}
N 430 -480 430 -360 {lab=#net2}
N 460 -220 460 -180 {lab=#net3}
N 460 -180 520 -180 {lab=#net3}
N 520 -180 520 -150 {lab=#net3}
N 150 -320 150 -290 {lab=V_PLUS}
N 150 -320 340 -320 {lab=V_PLUS}
N 520 -90 520 -60 {lab=GND}
N 540 -480 540 -450 {lab=#net2}
N 490 -480 540 -480 {lab=#net2}
N 270 -240 340 -240 {lab=V_MINUS}
C {vsource.sym} 540 -420 0 0 {name=VDD value=1.8 savecurrent=false}
C {vsource.sym} 150 -260 0 1 {name=VP value="DC 0 AC 1" savecurrent=false}
C {vsource.sym} 270 -180 0 0 {name=VN value="DC 0 AC 0" savecurrent=false}
C {vsource.sym} 430 -120 0 0 {name=VSS value=0 savecurrent=false}
C {code_shown.sym} 690 -390 0 0 {name=s1 only_toplevel=false value="
.option savecurrents
.temp 27

.control
  save all
  op

  ac dec 200 1 1e9

  plot db((v(v_out))/(v(v_plus)-v(v_minus))) ph((v(v_out))/(v(v_plus)-v(v_minus))) xlog 

.endc

"}
C {sky130_fd_pr/corner.sym} 680 -600 0 0 {name=CORNER1 only_toplevel=true corner=tt}
C {gnd.sym} 430 -60 0 0 {name=l1 lab=GND}
C {gnd.sym} 540 -360 0 0 {name=l2 lab=GND}
C {gnd.sym} 270 -120 0 0 {name=l3 lab=GND}
C {gnd.sym} 150 -200 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 590 -280 2 0 {name=p17 sig_type=std_logic lab=V_OUT}
C {isource.sym} 520 -120 0 0 {name=I0 value=10n}
C {gnd.sym} 520 -60 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 150 -320 0 0 {name=p1 sig_type=std_logic lab=V_PLUS}
C {lab_pin.sym} 270 -240 0 0 {name=p2 sig_type=std_logic lab=V_MINUS}
C {/foss/designs/Analog_to_Spike/Schematic/OTA.sym} 430 -280 0 0 {name=x1}
