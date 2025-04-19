v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 260 -130 260 -110 {
lab=out}
N 220 -160 220 -80 {
lab=in}
N 260 -120 340 -120 {
lab=out}
N 260 -50 260 -30 {
lab=GND}
N 260 -200 260 -190 {
lab=vdd}
N 260 -210 260 -200 {
lab=vdd}
N 260 -160 280 -160 {
lab=vdd}
N 280 -190 280 -160 {
lab=vdd}
N 260 -190 280 -190 {
lab=vdd}
N 260 -80 280 -80 {
lab=GND}
N 280 -80 280 -50 {
lab=GND}
N 260 -50 280 -50 {
lab=GND}
N 400 -120 480 -120 {
lab=out}
N 340 -120 400 -120 {lab=out}
N 400 -50 400 -30 {lab=GND}
N 400 -120 400 -110 {lab=out}
N 60 -120 220 -120 {lab=in}
C {devices/ipin.sym} 60 -120 0 0 {name=p2 lab=in}
C {sky130_fd_pr/nfet_01v8.sym} 240 -80 0 0 {name=M1
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
C {devices/gnd.sym} 260 -30 0 0 {name=l4 lab=GND}
C {devices/iopin.sym} 260 -210 0 0 {name=p5 lab=vdd}
C {devices/opin.sym} 480 -120 0 0 {name=p8 lab=out}
C {sky130_fd_pr/pfet_01v8.sym} 240 -160 0 0 {name=M0
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
C {devices/simulator_commands_shown.sym} 40 -400 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
VA in 0 pulse (0 1.8 0 4n 4n 0.5u 1u) dc 0
VD VDD 0 dc 1.8
.control
tran 1n 2u
plot v(in) v(out)
write 6inv_test.raw
.endc
"}
C {devices/code.sym} 370 -330 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice ss

"
spice_ignore=false}
C {devices/capa.sym} 400 -80 0 0 {name=C1
m=1
value=40p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 400 -30 0 0 {name=l5 lab=GND}
