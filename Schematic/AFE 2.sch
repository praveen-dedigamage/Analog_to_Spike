v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 650 -410 650 -280 {lab=Vsf}
N 650 -340 740 -340 {lab=Vsf}
N 800 -340 890 -340 {lab=P1}
N 890 -340 890 -280 {lab=P1}
N 890 -340 1050 -340 {lab=P1}
N 1050 -340 1050 -280 {lab=P1}
N 890 -220 890 -190 {lab=Vdiff}
N 890 -190 1190 -190 {lab=Vdiff}
N 1190 -190 1190 -170 {lab=Vdiff}
N 1050 -220 1050 -190 {lab=Vdiff}
N 650 -220 650 -190 {lab=GND}
N 1190 -430 1190 -190 {lab=Vdiff}
N 1050 -460 1150 -460 {lab=P1}
N 1050 -460 1050 -340 {lab=P1}
N 1190 -110 1190 -70 {lab=GND}
N 1130 -140 1150 -140 {lab=Vdn}
N 650 -190 650 -70 {lab=GND}
N 570 -250 610 -250 {lab=Vin}
N 570 -440 610 -440 {lab=Vb1}
N 650 -550 650 -470 {lab=Vdd}
N 1190 -550 1190 -490 {lab=Vdd}
N 1190 -340 1330 -340 {lab=Vdiff}
N 1330 -430 1330 -340 {lab=Vdiff}
N 1330 -460 1360 -460 {lab=Vdiff}
N 1330 -460 1330 -430 {lab=Vdiff}
N 1400 -550 1400 -490 {lab=Vdd}
N 1400 -430 1400 -170 {lab=Vout}
N 1400 -110 1400 -70 {lab=GND}
N 1340 -140 1360 -140 {lab=Vonn}
N 1400 -290 1510 -290 {lab=Vout}
N 820 -250 850 -250 {lab=Vreset}
N 650 -440 700 -440 {lab=Vdd}
N 650 -250 700 -250 {lab=Vdd}
N 890 -250 940 -250 {lab=Vdd}
N 1190 -460 1230 -460 {lab=Vdd}
N 1400 -460 1450 -460 {lab=Vdd}
N 1190 -140 1240 -140 {lab=GND}
N 1400 -140 1450 -140 {lab=GND}
N 860 -620 930 -620 {lab=GND}
N 930 -620 1000 -620 {lab=GND}
N 1000 -620 1070 -620 {lab=GND}
N 860 -720 860 -680 {lab=Vdd}
N 930 -720 930 -680 {lab=Vb1}
N 1000 -720 1000 -680 {lab=Vdn}
N 1070 -720 1070 -680 {lab=Vonn}
N 1000 -620 1000 -590 {lab=GND}
C {devices/code.sym} 630 -720 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {sky130_fd_pr/pfet_01v8.sym} 630 -250 0 0 {name=Msf
W=1
L=0.15
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
C {sky130_fd_pr/pfet_01v8.sym} 630 -440 0 0 {name=Mb1
W=1
L=0.15
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
C {sky130_fd_pr/cap_mim_m3_1.sym} 770 -340 3 0 {name=C1 model=cap_mim_m3_1 W=16 L=15 MF=2 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1050 -250 0 0 {name=C2 model=cap_mim_m3_1 W=4 L=3 MF=2 spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 870 -250 0 0 {name=Mr
W=1
L=0.15
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
C {sky130_fd_pr/pfet_01v8.sym} 1170 -460 0 0 {name=Mdp
W=1
L=0.3
nf=2
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
C {sky130_fd_pr/nfet_01v8.sym} 1170 -140 0 0 {name=Mdn
W=1
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 1380 -460 0 0 {name=MONp
W=1.5
L=3.2
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1380 -140 0 0 {name=MONn
W=1.5
L=3.2
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {code_shown.sym} 40 -730 0 0 {name=s1 only_toplevel=false value="
.option savecurrents
.temp 27

* Case #1 -> 100 Hz
*Vin vin 0 SIN(0 0.5 100 0 0) 			
*Vreset vreset 0 PULSE(1.8 0 0 1u 1u 900u 1000u)

* Case #2 -> 10 Hz
*Vin vin 0 SIN(0 0.5 10 0 0) 			
*Vreset vreset 0 PULSE(1.8 0 0 100u 100u 9m 10m)

* Case #3 -> 1 Hz
Vin vin 0 SIN(0 0.9 1 0 0) 			
Vreset vreset 0 PULSE(1.8 0 0 1m 1m 90m 100m)

.control
save all

* Case #1 -> Run 40 ms
*tran 1u 0.04

* Case #2 -> Run 400 ms
*tran 100u 0.4

* Case #3 -> Run 4 s
tran 1m 4


plot vin vout
plot vdiff vout
plot vsf p1 vdiff

.endc"

}
C {lab_pin.sym} 570 -440 0 0 {name=p2 sig_type=std_logic lab=Vb1}
C {gnd.sym} 1190 -70 0 0 {name=l2 lab=GND}
C {gnd.sym} 1400 -70 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 650 -550 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 1190 -550 0 0 {name=p3 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 1400 -550 0 0 {name=p4 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 650 -340 0 0 {name=p5 sig_type=std_logic lab=Vsf}
C {lab_pin.sym} 570 -250 0 0 {name=p7 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 700 -440 2 0 {name=p8 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 700 -250 2 0 {name=p9 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 1190 -340 0 0 {name=p11 sig_type=std_logic lab=Vdiff}
C {lab_pin.sym} 940 -250 2 0 {name=p12 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 1230 -460 2 0 {name=p13 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 1450 -460 2 0 {name=p14 sig_type=std_logic lab=Vdd}
C {gnd.sym} 1450 -140 0 0 {name=l4 lab=GND}
C {gnd.sym} 1240 -140 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 1510 -290 2 0 {name=p15 sig_type=std_logic lab=Vout}
C {lab_pin.sym} 1340 -140 0 0 {name=p16 sig_type=std_logic lab=Vonn}
C {lab_pin.sym} 1130 -140 0 0 {name=p17 sig_type=std_logic lab=Vdn}
C {vsource.sym} 860 -650 0 0 {name=Vdd value=1.8 savecurrent=false}
C {vsource.sym} 930 -650 0 0 {name=vb1 value=0.9 savecurrent=false}
C {gnd.sym} 650 -70 0 0 {name=l6 lab=GND}
C {gnd.sym} 1000 -590 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 860 -720 0 0 {name=p18 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 930 -720 0 0 {name=p19 sig_type=std_logic lab=Vb1}
C {lab_pin.sym} 1000 -720 0 0 {name=p22 sig_type=std_logic lab=Vdn}
C {vsource.sym} 1000 -650 0 0 {name=vdn value=0.4 savecurrent=false}
C {vsource.sym} 1070 -650 0 0 {name=voffn value=0.3 savecurrent=false}
C {lab_pin.sym} 1070 -720 0 0 {name=p24 sig_type=std_logic lab=Vonn}
C {lab_pin.sym} 890 -340 1 0 {name=p10 sig_type=std_logic lab=P1}
C {lab_pin.sym} 820 -250 0 0 {name=p6 sig_type=std_logic lab=Vreset}
C {title.sym} 200 0 0 0 {name=l1 author="Praveen Dedigamage"}
