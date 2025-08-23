v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 550 -450 550 -280 {lab=#net1}
N 750 -450 750 -280 {lab=#net2}
N 550 -550 550 -510 {lab=#net3}
N 550 -550 750 -550 {lab=#net3}
N 750 -550 750 -510 {lab=#net3}
N 550 -220 550 -160 {lab=vss}
N 750 -220 750 -160 {lab=vss}
N 790 -480 860 -480 {lab=vinn}
N 440 -480 510 -480 {lab=vinp}
N 790 -250 880 -250 {lab=#net2}
N 420 -250 510 -250 {lab=#net1}
N 480 -310 480 -250 {lab=#net1}
N 480 -310 550 -310 {lab=#net1}
N 750 -310 820 -310 {lab=#net2}
N 820 -310 820 -250 {lab=#net2}
N 380 -250 420 -250 {lab=#net1}
N 880 -250 920 -250 {lab=#net2}
N 380 -870 920 -870 {lab=#net4}
N 440 -870 440 -810 {lab=#net4}
N 340 -810 440 -810 {lab=#net4}
N 340 -950 340 -900 {lab=vdd}
N 960 -950 960 -900 {lab=vdd}
N 340 -220 340 -160 {lab=vss}
N 960 -220 960 -160 {lab=vss}
N 260 -250 340 -250 {lab=vss}
N 550 -250 600 -250 {lab=vss}
N 700 -250 750 -250 {lab=vss}
N 280 -870 340 -870 {lab=vdd}
N 960 -870 1040 -870 {lab=vdd}
N 510 -700 610 -700 {lab=ibias}
N 470 -760 470 -730 {lab=vdd}
N 470 -760 650 -760 {lab=vdd}
N 650 -760 650 -730 {lab=vdd}
N 550 -700 550 -650 {lab=ibias}
N 470 -650 550 -650 {lab=ibias}
N 470 -670 470 -650 {lab=ibias}
N 410 -700 470 -700 {lab=vdd}
N 410 -760 410 -700 {lab=vdd}
N 410 -760 470 -760 {lab=vdd}
N 650 -760 710 -760 {lab=vdd}
N 710 -760 710 -700 {lab=vdd}
N 650 -700 710 -700 {lab=vdd}
N 550 -800 550 -760 {lab=vdd}
N 960 -570 1050 -570 {lab=vout}
N 340 -950 960 -950 {lab=vdd}
N 260 -870 280 -870 {lab=vdd}
N 260 -950 260 -870 {lab=vdd}
N 260 -950 340 -950 {lab=vdd}
N 960 -950 1040 -950 {lab=vdd}
N 1040 -950 1040 -870 {lab=vdd}
N 650 -1020 650 -950 {lab=vdd}
N 260 -250 260 -160 {lab=vss}
N 260 -160 340 -160 {lab=vss}
N 340 -160 550 -160 {lab=vss}
N 550 -160 750 -160 {lab=vss}
N 750 -160 960 -160 {lab=vss}
N 960 -160 1040 -160 {lab=vss}
N 1040 -250 1040 -160 {lab=vss}
N 960 -250 1040 -250 {lab=vss}
N 650 -160 650 -100 {lab=vss}
N 600 -250 600 -160 {lab=vss}
N 700 -250 700 -160 {lab=vss}
N 550 -480 580 -480 {lab=vdd}
N 580 -950 580 -480 {lab=vdd}
N 720 -480 750 -480 {lab=vdd}
N 550 -950 550 -800 {lab=vdd}
N 340 -840 340 -810 {lab=#net4}
N 960 -840 960 -640 {lab=vout}
N 960 -580 960 -570 {lab=vout}
N 960 -570 960 -280 {lab=vout}
N 340 -580 340 -280 {lab=#net4}
N 340 -810 340 -640 {lab=#net4}
N 470 -650 470 -590 {lab=ibias}
N 650 -670 650 -550 {lab=#net3}
N 720 -950 720 -480 {lab=vdd}
N 470 -650 550 -650 {lab=ibias}
N 470 -670 470 -650 {lab=ibias}
N 340 -640 340 -580 {lab=#net4}
N 960 -640 960 -580 {lab=vout}
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
C {ipin.sym} 650 -1020 0 0 {name=p24 lab=vdd}
C {ipin.sym} 440 -480 0 0 {name=p25 lab=vinp}
C {ipin.sym} 860 -480 0 1 {name=p26 lab=vinn}
C {ipin.sym} 650 -100 0 1 {name=p27 lab=vss}
C {opin.sym} 1050 -570 0 0 {name=p23 lab=vout}
C {ipin.sym} 470 -590 0 0 {name=p1 lab=ibias}
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
