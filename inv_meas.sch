v {xschem version=3.1.0 file_version=1.2
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
N 460 -620 460 -600 {
lab=VDD}
N 460 -600 460 -580 {
lab=VDD}
N 460 -520 460 -460 {
lab=pinY}
N 460 -400 460 -380 {
lab=GND}
N 460 -380 460 -360 {
lab=GND}
N 420 -550 420 -430 {
lab=pinA}
N 460 -550 480 -550 {
lab=VDD}
N 460 -430 480 -430 {
lab=GND}
N 480 -590 480 -550 {
lab=VDD}
N 480 -430 480 -390 {
lab=GND}
N 460 -590 480 -590 {
lab=VDD}
N 460 -390 480 -390 {
lab=GND}
N 400 -490 420 -490 {
lab=pinA}
N 460 -490 480 -490 {
lab=pinY}
C {devices/code_shown.sym} 60 -930 0 0 {name=ngspice
only_toplevel=false
value="VA inA 0 pulse(0 1.8 0 40p 40p 1n 2n) dc 0
VD VDD 0 dc 1.8
.control
save all
tran 1p 4n
meas tran delayA1 find time WHEN v(pinA)=0.9 RISE=2
meas tran delayY1 find time WHEN v(pinY)=0.9 FALL=2
let delay1 = delayY1 - delayA1
echo tpHL = $&delay1

meas tran delayA2 find time WHEN v(pinA)=0.9 FALL=1
meas tran delayY2 find time WHEN v(pinY)=0.9 RISE=1
let delay2 = delayY2 - delayA2
echo tpLH = $&delay2
.endc"}
C {devices/ipin.sym} 110 -490 0 0 {name=p10 lab=inA}
C {sky130_fd_pr/pfet_01v8.sym} 160 -550 0 0 {name=M1
L=0.15
W=2.4
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
C {devices/gnd.sym} 180 -360 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 730 -360 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 290 -360 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 620 -360 0 0 {name=l8 lab=GND}
C {devices/opin.sym} 780 -490 0 0 {name=p4 lab=outY}
C {devices/lab_wire.sym} 360 -490 0 0 {name=p1 sig_type=std_logic lab=pinA}
C {devices/lab_wire.sym} 520 -490 0 0 {name=p2 sig_type=std_logic lab=pinY}
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
C {devices/gnd.sym} 460 -360 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 440 -430 0 0 {name=M10
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
C {sky130_fd_pr/pfet_01v8.sym} 270 -550 0 0 {name=M3
L=0.15
W=2.4
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
C {sky130_fd_pr/pfet_01v8.sym} 440 -550 0 0 {name=M5
L=0.15
W=2.4
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
C {sky130_fd_pr/pfet_01v8.sym} 600 -550 0 0 {name=M7
L=0.15
W=2.4
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
C {sky130_fd_pr/pfet_01v8.sym} 710 -550 0 0 {name=M9
L=0.15
W=2.4
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
C {devices/code.sym} 610 -860 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".param mc_mm_switch=0
.param mc_pr_switch=0
.include $::SKYWATER_MODELS/corners/tt.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical__lin.spice
.include $::SKYWATER_MODELS/corners/tt/specialized_cells.spice
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"}
C {devices/vdd.sym} 730 -620 0 0 {name=l5 lab=VDD}
C {devices/vdd.sym} 620 -620 0 0 {name=l6 lab=VDD}
C {devices/vdd.sym} 460 -620 0 0 {name=l7 lab=VDD}
C {devices/vdd.sym} 290 -620 0 0 {name=l9 lab=VDD}
C {devices/vdd.sym} 180 -620 0 0 {name=l10 lab=VDD}
