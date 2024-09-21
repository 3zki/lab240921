v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 220 -600 250 -600 {
lab=D}
N 200 -600 220 -600 {
lab=D}
N 850 -360 880 -360 {
lab=E}
N 830 -360 850 -360 {
lab=E}
N 410 -640 410 -630 {
lab=VDD}
N 410 -570 410 -550 {
lab=#net1}
N 410 -490 410 -470 {
lab=#net2}
N 410 -410 410 -390 {
lab=#net3}
N 410 -330 410 -300 {
lab=GND}
N 410 -660 410 -640 {
lab=VDD}
N 310 -600 370 -600 {
lab=D}
N 310 -600 310 -360 {
lab=D}
N 350 -440 370 -440 {
lab=F}
N 350 -520 370 -520 {
lab=_F}
N 250 -600 310 -600 {
lab=D}
N 620 -370 620 -360 {
lab=VDD}
N 620 -300 620 -280 {
lab=#net4}
N 620 -220 620 -200 {
lab=#net2}
N 620 -140 620 -120 {
lab=#net5}
N 620 -60 620 -30 {
lab=GND}
N 620 -390 620 -370 {
lab=VDD}
N 660 -170 680 -170 {
lab=_F}
N 660 -250 680 -250 {
lab=F}
N 540 -490 540 -470 {
lab=Q}
N 540 -410 540 -390 {
lab=GND}
N 500 -520 500 -440 {
lab=#net2}
N 410 -480 500 -480 {
lab=#net2}
N 540 -570 540 -550 {
lab=VDD}
N 660 -330 720 -330 {
lab=Q}
N 310 -360 370 -360 {
lab=D}
N 720 -330 720 -90 {
lab=Q}
N 660 -90 720 -90 {
lab=Q}
N 720 -210 730 -210 {
lab=Q}
N 730 -480 730 -210 {
lab=Q}
N 540 -480 730 -480 {
lab=Q}
N 730 -480 790 -480 {
lab=Q}
N 920 -370 920 -350 {
lab=_F}
N 920 -290 920 -270 {
lab=GND}
N 880 -400 880 -320 {
lab=E}
N 920 -450 920 -430 {
lab=VDD}
N 1070 -370 1070 -350 {
lab=F}
N 1070 -290 1070 -270 {
lab=GND}
N 1030 -400 1030 -320 {
lab=_F}
N 1070 -450 1070 -430 {
lab=VDD}
N 920 -360 1030 -360 {
lab=_F}
N 1070 -360 1170 -360 {
lab=F}
N 410 -520 430 -520 {
lab=VDD}
N 430 -640 430 -520 {
lab=VDD}
N 410 -640 430 -640 {
lab=VDD}
N 410 -600 430 -600 {
lab=VDD}
N 410 -440 430 -440 {
lab=GND}
N 410 -360 430 -360 {
lab=GND}
N 410 -320 430 -320 {
lab=GND}
N 430 -440 430 -320 {
lab=GND}
N 540 -520 550 -520 {
lab=VDD}
N 550 -520 560 -520 {
lab=VDD}
N 560 -560 560 -520 {
lab=VDD}
N 540 -560 560 -560 {
lab=VDD}
N 540 -440 560 -440 {
lab=GND}
N 560 -440 560 -400 {
lab=GND}
N 540 -400 560 -400 {
lab=GND}
N 600 -330 620 -330 {
lab=VDD}
N 600 -370 600 -330 {
lab=VDD}
N 600 -370 620 -370 {
lab=VDD}
N 600 -330 600 -250 {
lab=VDD}
N 600 -250 620 -250 {
lab=VDD}
N 600 -170 620 -170 {
lab=GND}
N 600 -170 600 -50 {
lab=GND}
N 600 -50 620 -50 {
lab=GND}
N 600 -90 620 -90 {
lab=GND}
N 920 -400 940 -400 {
lab=VDD}
N 940 -440 940 -400 {
lab=VDD}
N 920 -440 940 -440 {
lab=VDD}
N 920 -320 940 -320 {
lab=GND}
N 940 -320 940 -280 {
lab=GND}
N 920 -280 940 -280 {
lab=GND}
N 1070 -320 1090 -320 {
lab=GND}
N 1090 -320 1090 -280 {
lab=GND}
N 1070 -280 1090 -280 {
lab=GND}
N 1070 -400 1090 -400 {
lab=VDD}
N 1090 -440 1090 -400 {
lab=VDD}
N 1070 -440 1090 -440 {
lab=VDD}
N 470 -480 470 -210 {
lab=#net2}
N 470 -210 620 -210 {
lab=#net2}
C {devices/ipin.sym} 830 -360 0 0 {name=p5 lab=E}
C {devices/ipin.sym} 200 -600 0 0 {name=p6 lab=D}
C {devices/opin.sym} 790 -480 0 0 {name=p7 lab=Q}
C {devices/code_shown.sym} 150 -790 0 0 {name=ngspice
only_toplevel=false
value="VD D 0 pulse(0 1.8 0 40p 40p 5n 10n) dc 0
VE E 0 pulse(0 1.8 2.5n 40p 40p 50n 75n) dc 0
VP VDD 0 dc 1.8
.control
tran 40p 300n
write dlatch_bench.raw
.endc"}
C {devices/code.sym} 640 -770 0 0 {name=MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {sky130_fd_pr/pfet_01v8.sym} 390 -600 0 0 {name=M1
L=0.15
W=5
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
C {sky130_fd_pr/pfet_01v8.sym} 390 -520 0 0 {name=M2
L=0.15
W=5
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
C {sky130_fd_pr/nfet_01v8.sym} 390 -440 0 0 {name=M3
L=0.15
W=2
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
C {sky130_fd_pr/nfet_01v8.sym} 390 -360 0 0 {name=M4
L=0.15
W=2
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
C {devices/vdd.sym} 410 -660 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 410 -300 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 350 -520 0 0 {name=p1 sig_type=std_logic lab=_F}
C {devices/lab_wire.sym} 350 -440 0 0 {name=p2 sig_type=std_logic lab=F}
C {sky130_fd_pr/pfet_01v8.sym} 640 -330 0 1 {name=M5
L=0.15
W=5
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
C {sky130_fd_pr/pfet_01v8.sym} 640 -250 0 1 {name=M6
L=0.15
W=5
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
C {sky130_fd_pr/nfet_01v8.sym} 640 -170 0 1 {name=M7
L=0.15
W=2
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
C {sky130_fd_pr/nfet_01v8.sym} 640 -90 0 1 {name=M8
L=0.15
W=2
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
C {devices/vdd.sym} 620 -390 0 1 {name=l3 lab=VDD}
C {devices/gnd.sym} 620 -30 0 1 {name=l4 lab=GND}
C {devices/lab_wire.sym} 680 -250 0 1 {name=p3 sig_type=std_logic lab=F}
C {devices/lab_wire.sym} 680 -170 0 1 {name=p4 sig_type=std_logic lab=_F}
C {sky130_fd_pr/pfet_01v8.sym} 520 -520 0 0 {name=M9
L=0.15
W=2.5
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
C {sky130_fd_pr/nfet_01v8.sym} 520 -440 0 0 {name=M10
L=0.15
W=1
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
C {devices/gnd.sym} 540 -390 0 0 {name=l5 lab=GND}
C {devices/vdd.sym} 540 -570 0 0 {name=l6 lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 900 -400 0 0 {name=M11
L=0.15
W=2.5
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
C {sky130_fd_pr/nfet_01v8.sym} 900 -320 0 0 {name=M12
L=0.15
W=1
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
C {devices/gnd.sym} 920 -270 0 0 {name=l7 lab=GND}
C {devices/vdd.sym} 920 -450 0 0 {name=l8 lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 1050 -400 0 0 {name=M13
L=0.15
W=2.5
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
C {sky130_fd_pr/nfet_01v8.sym} 1050 -320 0 0 {name=M14
L=0.15
W=1
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
C {devices/gnd.sym} 1070 -270 0 0 {name=l9 lab=GND}
C {devices/vdd.sym} 1070 -450 0 0 {name=l10 lab=VDD}
C {devices/lab_wire.sym} 1010 -360 0 0 {name=p8 sig_type=std_logic lab=_F}
C {devices/lab_wire.sym} 1170 -360 0 0 {name=p9 sig_type=std_logic lab=F}
