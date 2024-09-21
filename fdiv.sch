v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 540 -420 610 -420 {
lab=A}
N 790 -420 870 -420 {
lab=div2}
N 790 -420 790 -340 {
lab=div2}
N 740 -340 790 -340 {
lab=div2}
N 610 -340 660 -340 {
lab=#net1}
N 610 -400 610 -340 {
lab=#net1}
N 820 -460 820 -420 {
lab=div2}
N 1050 -420 1050 -340 {
lab=div4}
N 1000 -340 1050 -340 {
lab=div4}
N 870 -340 920 -340 {
lab=#net2}
N 870 -400 870 -340 {
lab=#net2}
N 1050 -420 1130 -420 {
lab=div4}
N 1310 -420 1310 -340 {
lab=div8}
N 1260 -340 1310 -340 {
lab=div8}
N 1130 -340 1180 -340 {
lab=#net3}
N 1130 -400 1130 -340 {
lab=#net3}
N 1080 -460 1080 -420 {
lab=div4}
N 1340 -460 1340 -420 {
lab=div8}
N 1310 -420 1340 -420 {
lab=div8}
C {devices/opin.sym} 820 -460 0 0 {name=p1 lab=div2}
C {devices/ipin.sym} 540 -420 0 0 {name=p3 lab=A}
C {devices/code_shown.sym} 560 -630 0 0 {name=ngspice
only_toplevel=false
value="VA A 0 pulse(0 1.8 0 40p 40p 10n 20n) dc 0
VD VPWR 0 dc 1.8
.control
tran 40p 300n
plot v(A) v(div2) v(div4) v(div8)
write fdiv.raw
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
C {sky130_stdcells/inv_1.sym} 700 -340 2 0 {name=x4 VGND=0 VNB=0 VPB=VPWR VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/opin.sym} 1080 -460 0 0 {name=p2 lab=div4}
C {devices/opin.sym} 1340 -460 0 0 {name=p4 lab=div8}
C {sky130_stdcells/dfxtp_1.sym} 960 -410 0 0 {name=x2 VGND=0 VNB=0 VPB=VPWR VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfxtp_1.sym} 1220 -410 0 0 {name=x3 VGND=0 VNB=0 VPB=VPWR VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 960 -340 2 0 {name=x5 VGND=0 VNB=0 VPB=VPWR VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 1220 -340 2 0 {name=x6 VGND=0 VNB=0 VPB=VPWR VPWR=VPWR prefix=sky130_fd_sc_hd__ }
