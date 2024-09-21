v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 340 -210 340 -200 {
lab=GND}
N 340 -220 340 -210 {
lab=GND}
N 280 -300 300 -300 {
lab=A}
N 340 -320 340 -280 {
lab=Y}
N 340 -250 360 -250 {
lab=GND}
N 360 -250 360 -210 {
lab=GND}
N 340 -210 360 -210 {
lab=GND}
N 340 -350 360 -350 {
lab=VDD}
N 360 -390 360 -350 {
lab=VDD}
N 340 -390 360 -390 {
lab=VDD}
N 340 -400 340 -380 {
lab=VDD}
N 300 -350 300 -250 {
lab=A}
N 340 -300 360 -300 {
lab=Y}
C {sky130_fd_pr/nfet_01v8.sym} 320 -250 0 0 {name=M1
L=0.18
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
C {sky130_fd_pr/pfet_01v8.sym} 320 -350 0 0 {name=M2
L=0.18
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
C {devices/ipin.sym} 280 -300 0 0 {name=p2 lab=A}
C {devices/gnd.sym} 340 -200 0 0 {name=l2 lab=GND}
C {devices/ipin.sym} 340 -400 0 0 {name=p3 lab=VDD}
C {devices/code.sym} 130 -380 0 0 {name=MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/simulator_commands_shown.sym} 420 -370 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
VD VDD 0 dc 1.8
VA A 0 dc 0
.control
save all
dc VA 0 1.8 0.05
write "inv_dc.raw"
plot v(A) v(Y)
.endc
"}
C {devices/opin.sym} 360 -300 0 0 {name=p1 lab=Y}
