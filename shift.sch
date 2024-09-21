v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 540 -400 610 -400 {
lab=A}
N 1310 -420 1340 -420 {
lab=D}
N 820 -400 870 -400 {
lab=B}
N 820 -420 820 -400 {
lab=B}
N 790 -420 820 -420 {
lab=B}
N 1080 -400 1130 -400 {
lab=C}
N 1080 -420 1080 -400 {
lab=C}
N 1050 -420 1080 -420 {
lab=C}
N 820 -400 820 -360 {
lab=B}
N 1080 -400 1080 -360 {
lab=C}
N 1130 -460 1130 -420 {
lab=CLK}
N 540 -460 1130 -460 {
lab=CLK}
N 870 -460 870 -420 {
lab=CLK}
N 610 -460 610 -420 {
lab=CLK}
C {devices/opin.sym} 820 -360 0 0 {name=p1 lab=B}
C {devices/ipin.sym} 540 -400 0 0 {name=p3 lab=A}
C {devices/code_shown.sym} 560 -630 0 0 {name=ngspice
only_toplevel=false
value="VA A 0 pulse(0 1.8 0 40p 40p 20n 80n) dc 0
VC CLK 0 pulse(0 1.8 0 40p 40p 10n 20n) dc 0
VD VPWR 0 dc 1.8
.control
tran 40p 300n
plot v(A) v(B) v(C) v(D)
write shift.raw
.endc"}
C {devices/code.sym} 1170 -630 0 0 {name=MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {sky130_stdcells/dfxtp_1.sym} 700 -410 0 0 {name=x1 VGND=0 VNB=0 VPB=VPWR VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/opin.sym} 1080 -360 0 0 {name=p2 lab=C}
C {devices/opin.sym} 1340 -420 0 0 {name=p4 lab=D}
C {sky130_stdcells/dfxtp_1.sym} 960 -410 0 0 {name=x2 VGND=0 VNB=0 VPB=VPWR VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfxtp_1.sym} 1220 -410 0 0 {name=x3 VGND=0 VNB=0 VPB=VPWR VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/ipin.sym} 540 -460 0 0 {name=p5 lab=CLK}
