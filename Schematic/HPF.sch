v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 520 -190 570 -190 {lab=vout}
N 390 -190 520 -190 {lab=vout}
N 220 -190 330 -190 {lab=vin}
N 570 -190 710 -190 {lab=vout}
N 520 -260 520 -190 {lab=vout}
N 520 -360 520 -320 {lab=#net1}
N 460 -390 480 -390 {lab=#net1}
N 460 -390 460 -290 {lab=#net1}
N 460 -290 480 -290 {lab=#net1}
N 460 -340 520 -340 {lab=#net1}
N 520 -480 520 -420 {lab=vb}
N 520 -290 590 -290 {lab=vb}
N 520 -390 590 -390 {lab=vb}
N 520 -440 590 -440 {lab=vb}
N 590 -340 590 -290 {lab=vb}
N 590 -440 590 -390 {lab=vb}
N 590 -390 590 -340 {lab=vb}
C {sky130_fd_pr/cap_mim_m3_1.sym} 360 -190 1 0 {name=C1 model=cap_mim_m3_1 W=12 L=12 MF=2 spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 500 -290 0 0 {name=M1
W=1
L=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 500 -390 0 0 {name=M2
W=1
L=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {ipin.sym} 220 -190 0 0 {name=p1 lab=vin}
C {opin.sym} 710 -190 0 0 {name=p3 lab=vout}
C {ipin.sym} 520 -480 0 0 {name=p4 lab=vref}
