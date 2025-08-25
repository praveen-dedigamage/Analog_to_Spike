v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 230 -230 230 -180 {lab=V_MINUS}
N 230 -140 230 -110 {lab=GND}
N 90 -140 90 -110 {lab=GND}
N 560 -120 560 -90 {lab=GND}
N 400 -620 440 -620 {lab=V_OUT}
N 400 -220 400 -190 {lab=Ibias}
N 90 -230 90 -200 {lab=V_PLUS}
N 400 -130 400 -100 {lab=GND}
N 400 -240 400 -220 {lab=Ibias}
N 560 -140 560 -120 {lab=GND}
N 560 -230 560 -200 {lab=VDD}
N 70 -500 70 -470 {lab=GND}
N 70 -500 100 -500 {lab=GND}
N 100 -540 100 -500 {lab=GND}
C {vsource.sym} 560 -170 0 0 {name=VDD value=1.8 savecurrent=false}
C {vsource.sym} 90 -170 0 1 {name=VP value="DC 0 AC 1" savecurrent=false}
C {vsource.sym} 230 -170 0 0 {name=VN value="DC 0 AC 0" savecurrent=false}
C {code_shown.sym} 690 -390 0 0 {name=s1 only_toplevel=false value="
.option savecurrents
.temp 27

.control
  save all

  ac dec 200 1 1e9

  plot db((v(v_out))/(v(v_plus)-v(v_minus))) ph((v(v_out))/(v(v_plus)-v(v_minus))) xlog 

.endc

"}
C {sky130_fd_pr/corner.sym} 680 -600 0 0 {name=CORNER1 only_toplevel=true corner=tt}
C {gnd.sym} 560 -90 0 0 {name=l2 lab=GND}
C {gnd.sym} 230 -110 0 0 {name=l3 lab=GND}
C {gnd.sym} 90 -110 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 440 -620 2 0 {name=p17 sig_type=std_logic lab=V_OUT}
C {isource.sym} 400 -160 0 0 {name=I0 value=5n}
C {gnd.sym} 400 -100 0 0 {name=l5 lab=GND
value=1u}
C {lab_pin.sym} 90 -230 0 0 {name=p1 sig_type=std_logic lab=V_PLUS}
C {lab_pin.sym} 230 -230 0 0 {name=p2 sig_type=std_logic lab=V_MINUS}
C {/foss/designs/Analog_to_Spike/Schematic/OTA1.sym} 250 -580 0 0 {name=x1}
C {lab_pin.sym} 400 -240 0 0 {name=p4 sig_type=std_logic lab=Ibias
value=1u}
C {lab_pin.sym} 560 -230 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 100 -560 0 0 {name=p8 sig_type=std_logic lab=V_PLUS}
C {lab_pin.sym} 100 -580 0 0 {name=p9 sig_type=std_logic lab=V_MINUS}
C {lab_pin.sym} 100 -620 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 100 -600 0 0 {name=p13 sig_type=std_logic lab=Ibias}
C {gnd.sym} 70 -470 0 0 {name=l1 lab=GND}
