v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 350 -250 350 -200 {lab=V_MINUS}
N 510 -100 510 -70 {lab=GND}
N 350 -160 350 -130 {lab=GND}
N 230 -240 230 -210 {lab=GND}
N 620 -400 620 -370 {lab=GND}
N 510 -210 510 -160 {lab=#net1}
N 630 -290 670 -290 {lab=V_OUT}
N 510 -490 570 -490 {lab=#net2}
N 510 -490 510 -370 {lab=#net2}
N 540 -230 540 -190 {lab=#net3}
N 540 -190 600 -190 {lab=#net3}
N 600 -190 600 -160 {lab=#net3}
N 230 -330 230 -300 {lab=V_PLUS}
N 230 -330 420 -330 {lab=V_PLUS}
N 600 -100 600 -70 {lab=GND}
N 620 -490 620 -460 {lab=#net2}
N 570 -490 620 -490 {lab=#net2}
N 350 -250 420 -250 {lab=V_MINUS}
C {vsource.sym} 620 -430 0 0 {name=VDD value=1.8 savecurrent=false}
C {vsource.sym} 230 -270 0 1 {name=VP value="DC 0 AC 0.5 SIN(0.9 5e-6 10 1 0 0)" savecurrent=false}
C {vsource.sym} 350 -190 0 0 {name=VN value=0.9 savecurrent=false}
C {vsource.sym} 510 -130 0 0 {name=VSS value=0 savecurrent=false}
C {code_shown.sym} 800 -390 0 0 {name=s1 only_toplevel=false value="
.option savecurrents
.temp 27

.control
  save all
  tran 0.001 5

  plot v(v_plus)
  plot v(v_plus)-v(v_minus)
  plot v(v_out) 
.endc

"}
C {sky130_fd_pr/corner.sym} 810 -590 0 0 {name=CORNER1 only_toplevel=true corner=tt}
C {gnd.sym} 510 -70 0 0 {name=l1 lab=GND}
C {gnd.sym} 620 -370 0 0 {name=l2 lab=GND}
C {gnd.sym} 350 -130 0 0 {name=l3 lab=GND}
C {gnd.sym} 230 -210 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 670 -290 2 0 {name=p17 sig_type=std_logic lab=V_OUT}
C {isource.sym} 600 -130 0 0 {name=I0 value=10n}
C {gnd.sym} 600 -70 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 230 -330 0 0 {name=p1 sig_type=std_logic lab=V_PLUS}
C {lab_pin.sym} 350 -250 0 0 {name=p2 sig_type=std_logic lab=V_MINUS}
C {/foss/designs/Analog_to_Spike/Schematic/OTA.sym} 510 -290 0 0 {name=x1}
