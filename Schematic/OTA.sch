v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 550 -450 550 -280 {lab=#net1}
N 750 -450 750 -280 {lab=#net2}
N 550 -550 550 -510 {lab=#net3}
N 550 -550 750 -550 {lab=#net3}
N 750 -550 750 -510 {lab=#net3}
N 550 -220 550 -160 {lab=VSS}
N 750 -220 750 -160 {lab=VSS}
N 790 -480 860 -480 {lab=V_MINUS}
N 440 -480 510 -480 {lab=V_PLUS}
N 790 -250 880 -250 {lab=#net2}
N 420 -250 510 -250 {lab=#net1}
N 480 -310 480 -250 {lab=#net1}
N 480 -310 550 -310 {lab=#net1}
N 750 -310 820 -310 {lab=#net2}
N 820 -310 820 -250 {lab=#net2}
N 380 -250 420 -250 {lab=#net1}
N 880 -250 920 -250 {lab=#net2}
N 340 -840 340 -270 {lab=#net4}
N 960 -840 960 -280 {lab=V_OUT}
N 380 -870 920 -870 {lab=#net4}
N 440 -870 440 -810 {lab=#net4}
N 340 -810 440 -810 {lab=#net4}
N 340 -950 340 -900 {lab=VDD}
N 960 -950 960 -900 {lab=VDD}
N 650 -610 650 -550 {lab=#net3}
N 340 -220 340 -160 {lab=VSS}
N 960 -220 960 -160 {lab=VSS}
N 340 -160 340 -130 {lab=VSS}
N 260 -250 340 -250 {lab=VSS}
N 960 -250 1060 -250 {lab=VSS}
N 960 -160 960 -130 {lab=VSS}
N 550 -250 600 -250 {lab=VSS}
N 700 -250 750 -250 {lab=VSS}
N 710 -480 750 -480 {lab=VDD}
N 550 -480 600 -480 {lab=VDD}
N 280 -870 340 -870 {lab=VDD}
N 960 -870 1040 -870 {lab=VDD}
N 510 -700 610 -700 {lab=#net5}
N 470 -760 470 -730 {lab=VDD}
N 470 -760 650 -760 {lab=VDD}
N 650 -760 650 -730 {lab=VDD}
N 550 -700 550 -650 {lab=#net5}
N 470 -650 550 -650 {lab=#net5}
N 470 -670 470 -650 {lab=#net5}
N 470 -650 470 -600 {lab=#net5}
N 400 -700 470 -700 {lab=VDD}
N 400 -760 400 -700 {lab=VDD}
N 400 -760 470 -760 {lab=VDD}
N 650 -760 720 -760 {lab=VDD}
N 720 -760 720 -700 {lab=VDD}
N 650 -700 720 -700 {lab=VDD}
N 650 -670 650 -610 {lab=#net3}
N 550 -800 550 -760 {lab=VDD}
N 470 -540 470 -520 {lab=VSS}
N 1270 -880 1270 -850 {lab=VDD}
N 1610 -880 1610 -850 {lab=VSS}
N 1500 -880 1500 -850 {lab=V_MINUS}
N 1390 -880 1390 -850 {lab=V_PLUS}
N 1270 -760 1610 -760 {lab=GND}
N 1610 -790 1610 -760 {lab=GND}
N 1500 -790 1500 -760 {lab=GND}
N 1390 -790 1390 -760 {lab=GND}
N 1270 -790 1270 -760 {lab=GND}
N 1450 -760 1450 -740 {lab=GND}
N 750 -160 750 -130 {lab=VSS}
N 550 -160 550 -130 {lab=VSS}
N 960 -570 1050 -570 {lab=V_OUT}
C {sky130_fd_pr/corner.sym} 10 -930 0 0 {name=CORNER1 only_toplevel=true corner=tt}
C {sky130_fd_pr/pfet_01v8.sym} 530 -480 0 0 {name=M1
W=10
L=2
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 530 -250 0 0 {name=M3
W=2
L=2
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 770 -250 0 1 {name=M4
W=2
L=2
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 770 -480 0 1 {name=M2
W=10
L=2
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 360 -250 0 1 {name=M5
W=14
L=2
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 940 -250 0 0 {name=M6
W=14
L=2
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 360 -870 0 1 {name=M7
W=2
L=2
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 340 -130 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 260 -250 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1060 -250 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 960 -130 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 700 -250 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 600 -250 2 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 600 -480 2 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 710 -480 2 1 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 280 -870 2 1 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1040 -870 2 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 960 -950 2 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 340 -950 2 1 {name=p12 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 860 -480 2 0 {name=p14 sig_type=std_logic lab=V_MINUS}
C {lab_pin.sym} 440 -480 2 1 {name=p15 sig_type=std_logic lab=V_PLUS}
C {sky130_fd_pr/pfet_01v8.sym} 940 -870 0 0 {name=M8
W=2
L=2
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 630 -700 0 0 {name=M10
W=10
L=2
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 490 -700 0 1 {name=M9
W=10
L=2
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 550 -800 2 0 {name=p13 sig_type=std_logic lab=VDD}
C {isource.sym} 470 -570 0 0 {name=I0 value=10n}
C {lab_pin.sym} 470 -520 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {vsource.sym} 1270 -820 0 0 {name=VDD value=1.8 savecurrent=false}
C {vsource.sym} 1390 -820 0 0 {name=VP value="DC 0 AC 0.5" savecurrent=false}
C {vsource.sym} 1500 -820 0 0 {name=VN value="DC 0 AC 0" savecurrent=false}
C {vsource.sym} 1610 -820 0 0 {name=VSS value=0 savecurrent=false}
C {lab_pin.sym} 1270 -880 2 1 {name=p17 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1610 -880 0 1 {name=p18 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1390 -880 2 1 {name=p19 sig_type=std_logic lab=V_PLUS}
C {lab_pin.sym} 1500 -880 2 0 {name=p20 sig_type=std_logic lab=V_MINUS}
C {gnd.sym} 1450 -740 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 550 -130 0 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 750 -130 0 1 {name=p22 sig_type=std_logic lab=VSS}
C {code_shown.sym} 1260 -640 0 0 {name=s1 only_toplevel=false value="
.option savecurrents
.temp 27

.control
  save all
  op
  *dc VP 0 1.8 0.001
  
  ac dec 200 1 1e9

  plot db((v(v_out))/(v(v_plus)-v(v_minus))) ph((v(v_out))/(v(v_plus)-v(v_minus))) xlog 

  *plot v(V_PLUS)-v(V_MINUS) v(V_OUT)
  *plot i(VDD)
.endc

"}
C {lab_pin.sym} 1050 -570 0 1 {name=p23 sig_type=std_logic lab=V_OUT}
