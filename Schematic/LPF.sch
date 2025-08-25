v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 240 -220 560 -220 {lab=Vout}
N 190 -220 240 -220 {lab=Vout}
N 80 -220 130 -220 {lab=Vin}
C {ipin.sym} 80 -220 0 0 {name=p1 lab=Vin}
C {opin.sym} 560 -220 0 0 {name=p4 lab=Vout
}
C {sky130_fd_pr/cap_mim_m3_1.sym} 160 -220 1 0 {name=C1 model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
