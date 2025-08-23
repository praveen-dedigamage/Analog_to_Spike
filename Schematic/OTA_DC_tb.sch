v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 280 -240 280 -190 {lab=V_MINUS}
N 440 -90 440 -60 {lab=GND}
N 280 -150 280 -120 {lab=GND}
N 160 -230 160 -200 {lab=GND}
N 550 -390 550 -360 {lab=GND}
N 440 -200 440 -150 {lab=#net1}
N 560 -280 600 -280 {lab=#net2}
N 440 -480 500 -480 {lab=#net3}
N 440 -480 440 -360 {lab=#net3}
N 470 -220 470 -180 {lab=#net4}
N 470 -180 530 -180 {lab=#net4}
N 530 -180 530 -150 {lab=#net4}
N 160 -320 160 -290 {lab=V_PLUS}
N 160 -320 350 -320 {lab=V_PLUS}
N 530 -90 530 -60 {lab=GND}
N 550 -480 550 -450 {lab=#net3}
N 500 -480 550 -480 {lab=#net3}
N 280 -240 350 -240 {lab=V_MINUS}
C {vsource.sym} 550 -420 0 0 {name=VDD value=1.8 savecurrent=false}
C {vsource.sym} 160 -260 0 1 {name=VP value="DC 0" savecurrent=false}
C {vsource.sym} 280 -180 0 0 {name=VN value="DC 0.9" savecurrent=false}
C {vsource.sym} 440 -120 0 0 {name=VSS value=0 savecurrent=false}
C {code_shown.sym} 790 -290 0 0 {name=s1 only_toplevel=false value="
.option savecurrents
.temp 27

.control
  save all
  op
  dc VP 0 1.8 0.001

  plot v(V_OUT)
  plot i(VDD)
.endc

"}
C {sky130_fd_pr/corner.sym} 740 -520 0 0 {name=CORNER1 only_toplevel=true corner=tt}
C {gnd.sym} 440 -60 0 0 {name=l1 lab=GND}
C {gnd.sym} 550 -360 0 0 {name=l2 lab=GND}
C {gnd.sym} 280 -120 0 0 {name=l3 lab=GND}
C {gnd.sym} 160 -200 0 0 {name=l4 lab=GND}
C {isource.sym} 530 -120 0 0 {name=I0 value=10n}
C {gnd.sym} 530 -60 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 160 -320 0 0 {name=p1 sig_type=std_logic lab=V_PLUS}
C {lab_pin.sym} 280 -240 0 0 {name=p2 sig_type=std_logic lab=V_MINUS}
C {/foss/designs/Analog_to_Spike/Schematic/OTA.sym} 440 -280 0 0 {name=x1}
C {lab_pin.sym} 600 -280 2 0 {name=p17 sig_type=std_logic lab=V_OUT}
