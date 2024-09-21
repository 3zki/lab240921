v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 80 -110 80 -90 {
lab=#net1}
N 40 -140 40 -60 {
lab=ina}
N 20 -100 40 -100 {
lab=ina}
N 80 -100 160 -100 {
lab=#net1}
N 80 -30 80 -10 {
lab=GND}
N 80 -180 80 -170 {
lab=vdd}
N 80 -190 80 -180 {
lab=vdd}
N 80 -140 100 -140 {
lab=vdd}
N 100 -170 100 -140 {
lab=vdd}
N 80 -170 100 -170 {
lab=vdd}
N 80 -60 100 -60 {
lab=GND}
N 100 -60 100 -30 {
lab=GND}
N 80 -30 100 -30 {
lab=GND}
N 200 -110 200 -90 {
lab=#net2}
N 160 -140 160 -60 {
lab=#net1}
N 200 -100 280 -100 {
lab=#net2}
N 200 -30 200 -10 {
lab=GND}
N 200 -180 200 -170 {
lab=vdd}
N 200 -190 200 -180 {
lab=vdd}
N 200 -140 220 -140 {
lab=vdd}
N 220 -170 220 -140 {
lab=vdd}
N 200 -170 220 -170 {
lab=vdd}
N 200 -60 220 -60 {
lab=GND}
N 220 -60 220 -30 {
lab=GND}
N 200 -30 220 -30 {
lab=GND}
N 320 -110 320 -90 {
lab=#net3}
N 280 -140 280 -60 {
lab=#net2}
N 320 -100 400 -100 {
lab=#net3}
N 320 -30 320 -10 {
lab=GND}
N 320 -180 320 -170 {
lab=vdd}
N 320 -190 320 -180 {
lab=vdd}
N 320 -140 340 -140 {
lab=vdd}
N 340 -170 340 -140 {
lab=vdd}
N 320 -170 340 -170 {
lab=vdd}
N 320 -60 340 -60 {
lab=GND}
N 340 -60 340 -30 {
lab=GND}
N 320 -30 340 -30 {
lab=GND}
N 440 -110 440 -90 {
lab=#net4}
N 400 -140 400 -60 {
lab=#net3}
N 440 -100 520 -100 {
lab=#net4}
N 440 -30 440 -10 {
lab=GND}
N 440 -180 440 -170 {
lab=vdd}
N 440 -190 440 -180 {
lab=vdd}
N 440 -140 460 -140 {
lab=vdd}
N 460 -170 460 -140 {
lab=vdd}
N 440 -170 460 -170 {
lab=vdd}
N 440 -60 460 -60 {
lab=GND}
N 460 -60 460 -30 {
lab=GND}
N 440 -30 460 -30 {
lab=GND}
N 560 -110 560 -90 {
lab=#net5}
N 520 -140 520 -60 {
lab=#net4}
N 560 -100 640 -100 {
lab=#net5}
N 560 -30 560 -10 {
lab=GND}
N 560 -180 560 -170 {
lab=vdd}
N 560 -190 560 -180 {
lab=vdd}
N 560 -140 580 -140 {
lab=vdd}
N 580 -170 580 -140 {
lab=vdd}
N 560 -170 580 -170 {
lab=vdd}
N 560 -60 580 -60 {
lab=GND}
N 580 -60 580 -30 {
lab=GND}
N 560 -30 580 -30 {
lab=GND}
N 680 -110 680 -90 {
lab=outy}
N 640 -140 640 -60 {
lab=#net5}
N 680 -100 760 -100 {
lab=outy}
N 680 -30 680 -10 {
lab=GND}
N 680 -180 680 -170 {
lab=vdd}
N 680 -190 680 -180 {
lab=vdd}
N 680 -140 700 -140 {
lab=vdd}
N 700 -170 700 -140 {
lab=vdd}
N 680 -170 700 -170 {
lab=vdd}
N 680 -60 700 -60 {
lab=GND}
N 700 -60 700 -30 {
lab=GND}
N 680 -30 700 -30 {
lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 60 -140 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 60 -60 0 0 {name=M2
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
C {devices/gnd.sym} 80 -10 0 0 {name=l1 lab=GND}
C {devices/iopin.sym} 80 -190 0 0 {name=p1 lab=vdd}
C {devices/ipin.sym} 20 -100 0 0 {name=p2 lab=ina}
C {sky130_fd_pr/nfet_01v8.sym} 180 -60 0 0 {name=M4
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
C {devices/gnd.sym} 200 -10 0 0 {name=l2 lab=GND}
C {devices/iopin.sym} 200 -190 0 0 {name=p3 lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} 300 -60 0 0 {name=M6
L=0.15
W=1
nf=1 
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 320 -10 0 0 {name=l3 lab=GND}
C {devices/iopin.sym} 320 -190 0 0 {name=p4 lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} 420 -60 0 0 {name=M8
L=0.15
W=1
nf=1 
mult=5
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 440 -10 0 0 {name=l4 lab=GND}
C {devices/iopin.sym} 440 -190 0 0 {name=p5 lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} 540 -60 0 0 {name=M10
L=0.15
W=1
nf=1 
mult=10
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 560 -10 0 0 {name=l5 lab=GND}
C {devices/iopin.sym} 560 -190 0 0 {name=p6 lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} 660 -60 0 0 {name=M12
L=0.15
W=10
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
C {devices/gnd.sym} 680 -10 0 0 {name=l6 lab=GND}
C {devices/iopin.sym} 680 -190 0 0 {name=p7 lab=vdd}
C {devices/opin.sym} 760 -100 0 0 {name=p8 lab=outy}
C {sky130_fd_pr/pfet_01v8.sym} 180 -140 0 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} 300 -140 0 0 {name=M5
L=0.15
W=2.5
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 420 -140 0 0 {name=M7
L=0.15
W=2.5
nf=1
mult=5
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 540 -140 0 0 {name=M9
L=0.15
W=2.5
nf=1
mult=10
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 660 -140 0 0 {name=M11
L=0.15
W=25
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
C {devices/simulator_commands_shown.sym} 40 -380 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
VA ina 0 pulse (0 1.8 0 40p 40p 0.5n 1n) dc 0
VD VDD 0 dc 1.8
.control
tran 1p 2n
plot v(ina) v(outy)
write 6inv_test3.raw
.endc
"}
C {devices/code.sym} 590 -390 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice ss

"
spice_ignore=false}
