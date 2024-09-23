v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 180 -620 180 -600 {
lab=VDD}
N 180 -600 180 -580 {
lab=VDD}
N 180 -520 180 -460 {
lab=#net1}
N 180 -400 180 -380 {
lab=GND}
N 180 -380 180 -360 {
lab=GND}
N 140 -550 140 -430 {
lab=inA}
N 180 -550 200 -550 {
lab=VDD}
N 180 -430 200 -430 {
lab=GND}
N 200 -590 200 -550 {
lab=VDD}
N 200 -430 200 -390 {
lab=GND}
N 180 -590 200 -590 {
lab=VDD}
N 180 -390 200 -390 {
lab=GND}
N 730 -620 730 -600 {
lab=VDD}
N 730 -600 730 -580 {
lab=VDD}
N 730 -520 730 -460 {
lab=outY}
N 730 -400 730 -380 {
lab=GND}
N 730 -380 730 -360 {
lab=GND}
N 690 -550 690 -430 {
lab=#net2}
N 730 -550 750 -550 {
lab=VDD}
N 730 -430 750 -430 {
lab=GND}
N 750 -590 750 -550 {
lab=VDD}
N 750 -430 750 -390 {
lab=GND}
N 730 -590 750 -590 {
lab=VDD}
N 730 -390 750 -390 {
lab=GND}
N 190 -490 250 -490 {
lab=#net1}
N 180 -490 190 -490 {
lab=#net1}
N 290 -620 290 -600 {
lab=VDD}
N 290 -600 290 -580 {
lab=VDD}
N 290 -520 290 -460 {
lab=pinA}
N 290 -400 290 -380 {
lab=GND}
N 290 -380 290 -360 {
lab=GND}
N 250 -550 250 -430 {
lab=#net1}
N 290 -550 310 -550 {
lab=VDD}
N 290 -430 310 -430 {
lab=GND}
N 310 -590 310 -550 {
lab=VDD}
N 310 -430 310 -390 {
lab=GND}
N 290 -590 310 -590 {
lab=VDD}
N 290 -390 310 -390 {
lab=GND}
N 300 -490 360 -490 {
lab=pinA}
N 290 -490 300 -490 {
lab=pinA}
N 520 -490 580 -490 {
lab=pinY}
N 620 -620 620 -600 {
lab=VDD}
N 620 -600 620 -580 {
lab=VDD}
N 620 -520 620 -460 {
lab=#net2}
N 620 -400 620 -380 {
lab=GND}
N 620 -380 620 -360 {
lab=GND}
N 580 -550 580 -430 {
lab=pinY}
N 620 -550 640 -550 {
lab=VDD}
N 620 -430 640 -430 {
lab=GND}
N 640 -590 640 -550 {
lab=VDD}
N 640 -430 640 -390 {
lab=GND}
N 620 -590 640 -590 {
lab=VDD}
N 620 -390 640 -390 {
lab=GND}
N 630 -490 690 -490 {
lab=#net2}
N 620 -490 630 -490 {
lab=#net2}
N 110 -490 140 -490 {
lab=inA}
N 360 -490 400 -490 {
lab=pinA}
N 480 -490 520 -490 {
lab=pinY}
N 730 -490 780 -490 {
lab=outY}
C {devices/code_shown.sym} 70 -780 0 0 {name=ngspice
only_toplevel=false
value="VA inA 0 pulse(0 1.8 0 40p 40p 1n 2n) dc 0
VD VDD 0 dc 1.8
.include ~/lab240921/INV_TEST_pex_extracted.spice
.control
tran 1p 4n
wrdata ~/inv_bench.txt v(ina) v(outy)
write ~/inv_test_pex.raw
.endc"}
C {devices/code.sym} 580 -780 0 0 {name=MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice ss

"
spice_ignore=false}
C {devices/ipin.sym} 110 -490 0 0 {name=p10 lab=inA}
C {sky130_fd_pr/pfet_01v8.sym} 160 -550 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 160 -430 0 0 {name=M2
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
C {devices/ipin.sym} 180 -620 0 0 {name=p5 lab=VDD
}
C {devices/gnd.sym} 180 -360 0 0 {name=l2 lab=GND}
C {devices/ipin.sym} 730 -620 0 0 {name=p8 lab=VDD
}
C {devices/gnd.sym} 730 -360 0 0 {name=l3 lab=GND}
C {devices/ipin.sym} 290 -620 0 0 {name=p13 lab=VDD
}
C {devices/gnd.sym} 290 -360 0 0 {name=l4 lab=GND}
C {devices/ipin.sym} 620 -620 0 0 {name=p19 lab=VDD
}
C {devices/gnd.sym} 620 -360 0 0 {name=l8 lab=GND}
C {inv.sym} 440 -490 0 0 {name=x1 VDD=VDD GND=GND prefix=INV_TEST}
C {devices/opin.sym} 780 -490 0 0 {name=p4 lab=outY}
C {devices/lab_wire.sym} 360 -490 0 0 {name=p1 sig_type=std_logic lab=pinA}
C {devices/lab_wire.sym} 520 -490 0 0 {name=p2 sig_type=std_logic lab=pinY}
C {sky130_fd_pr/pfet_01v8.sym} 270 -550 0 0 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} 270 -430 0 0 {name=M4
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
C {sky130_fd_pr/pfet_01v8.sym} 600 -550 0 0 {name=M5
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
C {sky130_fd_pr/nfet_01v8.sym} 600 -430 0 0 {name=M6
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
C {sky130_fd_pr/pfet_01v8.sym} 710 -550 0 0 {name=M7
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
C {sky130_fd_pr/nfet_01v8.sym} 710 -430 0 0 {name=M8
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
