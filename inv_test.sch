v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 240 -160 240 -100 {
lab=A}
N 280 -160 290 -160 {
lab=VDD}
N 290 -190 290 -160 {
lab=VDD}
N 280 -190 290 -190 {
lab=VDD}
N 280 -130 300 -130 {
lab=Y}
N 280 -100 290 -100 {
lab=GND}
N 290 -100 290 -70 {
lab=GND}
N 280 -70 290 -70 {
lab=GND}
N 280 -200 280 -190 {
lab=VDD}
N 280 -70 280 -50 {
lab=GND}
N 220 -130 240 -130 {
lab=A}
C {sky130_fd_pr/pfet_01v8.sym} 260 -160 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 260 -100 0 0 {name=M2
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
C {devices/ipin.sym} 220 -130 0 0 {name=p1 lab=A}
C {devices/opin.sym} 300 -130 0 0 {name=p2 lab=Y}
C {devices/iopin.sym} 280 -200 0 0 {name=p3 lab=VDD}
C {devices/iopin.sym} 280 -50 0 0 {name=p4 lab=GND}
