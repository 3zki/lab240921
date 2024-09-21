v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 580 -580 580 -560 {
lab=VDD}
N 580 -560 580 -540 {
lab=VDD}
N 580 -480 580 -420 {
lab=X1}
N 580 -360 580 -340 {
lab=GND}
N 580 -340 580 -320 {
lab=GND}
N 540 -510 540 -390 {
lab=A}
N 500 -450 540 -450 {
lab=A}
N 580 -450 640 -450 {
lab=X1}
N 580 -510 600 -510 {
lab=VDD}
N 580 -390 600 -390 {
lab=GND}
N 600 -550 600 -510 {
lab=VDD}
N 580 -550 600 -550 {
lab=VDD}
N 600 -390 600 -350 {
lab=GND}
N 580 -350 600 -350 {
lab=GND}
N 720 -580 720 -560 {
lab=VDD}
N 720 -560 720 -540 {
lab=VDD}
N 720 -480 720 -420 {
lab=X2}
N 720 -360 720 -340 {
lab=GND}
N 720 -340 720 -320 {
lab=GND}
N 680 -510 680 -390 {
lab=X1}
N 640 -450 680 -450 {
lab=X1}
N 720 -450 780 -450 {
lab=X2}
N 720 -510 740 -510 {
lab=VDD}
N 720 -390 740 -390 {
lab=GND}
N 740 -550 740 -510 {
lab=VDD}
N 740 -390 740 -350 {
lab=GND}
N 720 -550 740 -550 {
lab=VDD}
N 720 -350 740 -350 {
lab=GND}
N 860 -580 860 -560 {
lab=VDD}
N 860 -560 860 -540 {
lab=VDD}
N 860 -480 860 -420 {
lab=#net1}
N 860 -360 860 -340 {
lab=GND}
N 860 -340 860 -320 {
lab=GND}
N 820 -510 820 -390 {
lab=X2}
N 780 -450 820 -450 {
lab=X2}
N 860 -510 880 -510 {
lab=VDD}
N 860 -390 880 -390 {
lab=GND}
N 880 -550 880 -510 {
lab=VDD}
N 860 -550 880 -550 {
lab=VDD}
N 880 -390 880 -350 {
lab=GND}
N 860 -350 880 -350 {
lab=GND}
N 630 -470 630 -450 {
lab=X1}
N 770 -470 770 -450 {
lab=X2}
C {devices/code_shown.sym} 80 -570 0 0 {name=ngspice
only_toplevel=false
value="VA A 0 pulse(0 1.8 0 2p 2p 0.5n 1n) dc 0
VD VDD 0 dc 1.8
.control
 set wr_vecnames
 set wr_singlescale
 let count=0
 dowhile count < 10
  tran 1p 2n
  write ~/mc_\{$&count\}.raw
  reset
  let count = count + 1
 end
.endc"}
C {devices/code.sym} 340 -520 0 0 {name=MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt_mm
"
spice_ignore=false}
C {sky130_fd_pr/pfet_01v8.sym} 560 -510 0 0 {name=M13
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
C {sky130_fd_pr/nfet_01v8.sym} 560 -390 0 0 {name=M14
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
C {devices/ipin.sym} 580 -580 0 0 {name=p6 lab=VDD
}
C {devices/gnd.sym} 580 -320 0 0 {name=l2 lab=GND}
C {devices/ipin.sym} 500 -450 0 0 {name=p10 lab=A}
C {sky130_fd_pr/pfet_01v8.sym} 700 -510 0 0 {name=M15
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
C {sky130_fd_pr/nfet_01v8.sym} 700 -390 0 0 {name=M16
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
C {devices/ipin.sym} 720 -580 0 0 {name=p12 lab=VDD
}
C {devices/gnd.sym} 720 -320 0 0 {name=l6 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 840 -510 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 840 -390 0 0 {name=M2
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
C {devices/ipin.sym} 860 -580 0 0 {name=p1 lab=VDD
}
C {devices/gnd.sym} 860 -320 0 0 {name=l1 lab=GND}
C {devices/opin.sym} 630 -470 0 0 {name=p2 lab=X1}
C {devices/opin.sym} 770 -470 0 0 {name=p3 lab=X2}
