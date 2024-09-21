v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 120 -100 140 -100 {
lab=GND}
N 140 -100 140 -70 {
lab=GND}
N 120 -70 140 -70 {
lab=GND}
N 120 -70 120 -40 {
lab=GND}
N 40 -100 80 -100 {
lab=GN}
N 120 -160 120 -130 {
lab=ND}
N 120 -250 120 -220 {
lab=GND}
N 120 -280 140 -280 {
lab=PS}
N 140 -310 140 -280 {
lab=PS}
N 120 -310 140 -310 {
lab=PS}
N 120 -340 120 -310 {
lab=PS}
N 40 -280 80 -280 {
lab=GP}
C {sky130_fd_pr/nfet_01v8.sym} 100 -100 0 0 {name=M1
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
C {gnd.sym} 120 -40 0 0 {name=l2 lab=GND}
C {sky130_fd_pr/corner.sym} 210 -410 0 0 {name=CORNER only_toplevel=true corner=tt}
C {ipin.sym} 40 -100 0 0 {name=p2 lab=GN}
C {iopin.sym} 120 -160 0 0 {name=p1 lab=ND}
C {iopin.sym} 120 -340 0 0 {name=p3 lab=PS}
C {ipin.sym} 40 -280 0 0 {name=p4 lab=GP}
C {gnd.sym} 120 -220 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 100 -280 0 0 {name=M2
W=2.5
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
C {simulator_commands_shown.sym} 240 -210 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="VGP GP 0 dc 1.7
VGN GN 0 dc 0.1
VP PS 0 dc 1.8
VN ND 0 dc 1.8
.control
save all
op
show m
.endc"}
