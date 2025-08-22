v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 270 -300 270 -250 {lab=V_MINUS}
N 430 -150 430 -120 {lab=GND}
N 270 -210 270 -180 {lab=GND}
N 150 -290 150 -260 {lab=GND}
N 540 -450 540 -420 {lab=GND}
N 430 -260 430 -210 {lab=#net1}
N 550 -340 590 -340 {lab=V_OUT}
N 430 -540 490 -540 {lab=#net2}
N 430 -540 430 -420 {lab=#net2}
N 460 -280 460 -240 {lab=#net3}
N 460 -240 520 -240 {lab=#net3}
N 520 -240 520 -210 {lab=#net3}
N 150 -380 150 -350 {lab=V_PLUS}
N 150 -380 340 -380 {lab=V_PLUS}
N 520 -150 520 -120 {lab=GND}
N 540 -540 540 -510 {lab=#net2}
N 490 -540 540 -540 {lab=#net2}
N 270 -300 340 -300 {lab=V_MINUS}
C {/foss/designs/Neuromorphics/Analog_to_Spike/Schematic/OTA.sym} 430 -340 0 0 {name=x1}
C {vsource.sym} 540 -480 0 0 {name=VDD value=1.8 savecurrent=false}
C {vsource.sym} 150 -320 0 1 {name=VP value="DC 0 AC 1" savecurrent=false}
C {vsource.sym} 270 -240 0 0 {name=VN value="DC 0 AC 0" savecurrent=false}
C {vsource.sym} 430 -180 0 0 {name=VSS value=0 savecurrent=false}
C {code_shown.sym} 720 -440 0 0 {name=s1 only_toplevel=false value="
.option savecurrents
.temp 27

.control
  save all
  op

  ac dec 200 1 1e9

  plot db((v(v_out))/(v(v_plus)-v(v_minus))) ph((v(v_out))/(v(v_plus)-v(v_minus))) xlog 

.endc

"}
C {sky130_fd_pr/corner.sym} 730 -640 0 0 {name=CORNER1 only_toplevel=true corner=tt}
C {gnd.sym} 430 -120 0 0 {name=l1 lab=GND}
C {gnd.sym} 540 -420 0 0 {name=l2 lab=GND}
C {gnd.sym} 270 -180 0 0 {name=l3 lab=GND}
C {gnd.sym} 150 -260 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 590 -340 2 0 {name=p17 sig_type=std_logic lab=V_OUT}
C {isource.sym} 520 -180 0 0 {name=I0 value=10n}
C {gnd.sym} 520 -120 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 150 -380 0 0 {name=p1 sig_type=std_logic lab=V_PLUS}
C {lab_pin.sym} 270 -300 0 0 {name=p2 sig_type=std_logic lab=V_MINUS}
