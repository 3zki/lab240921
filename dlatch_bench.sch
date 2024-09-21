v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 510 -360 540 -360 {
lab=XQ}
N 510 -360 510 -340 {
lab=XQ}
N 660 -240 690 -240 {
lab=XQ}
N 510 -260 540 -260 {
lab=Q}
N 510 -280 510 -260 {
lab=Q}
N 690 -380 690 -360 {
lab=Q}
N 660 -380 690 -380 {
lab=Q}
N 510 -280 690 -340 {
lab=Q}
N 690 -360 690 -340 {
lab=Q}
N 510 -340 690 -280 {
lab=XQ}
N 690 -280 690 -240 {
lab=XQ}
N 470 -220 540 -220 {
lab=#net1}
N 470 -400 540 -400 {
lab=#net2}
N 690 -380 750 -380 {
lab=Q}
N 690 -240 750 -240 {
lab=XQ}
N 330 -380 350 -380 {
lab=E}
N 330 -240 350 -240 {
lab=#net2}
N 330 -200 350 -200 {
lab=E}
N 300 -420 330 -420 {
lab=D}
N 280 -420 300 -420 {
lab=D}
N 330 -280 330 -240 {
lab=#net2}
N 490 -400 490 -360 {
lab=#net2}
N 490 -360 490 -340 {
lab=#net2}
N 330 -280 490 -340 {
lab=#net2}
N 300 -380 330 -380 {
lab=E}
N 300 -380 300 -200 {
lab=E}
N 300 -200 330 -200 {
lab=E}
N 280 -200 300 -200 {
lab=E}
N 330 -420 350 -420 {
lab=D}
C {sky130_stdcells/nand2_1.sym} 600 -380 0 0 {name=x1 VGND=0 VNB=0 VPB=VPWR VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 600 -240 2 1 {name=x2 VGND=0 VNB=0 VPB=VPWR VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/ipin.sym} 280 -200 0 0 {name=p5 lab=E}
C {devices/ipin.sym} 280 -420 0 0 {name=p6 lab=D}
C {devices/opin.sym} 750 -380 0 0 {name=p7 lab=Q}
C {devices/opin.sym} 750 -240 0 0 {name=p8 lab=XQ}
C {sky130_stdcells/nand2_1.sym} 410 -400 0 0 {name=x3 VGND=0 VNB=0 VPB=VPWR VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 410 -220 2 1 {name=x4 VGND=0 VNB=0 VPB=VPWR VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/code_shown.sym} 150 -590 0 0 {name=ngspice
only_toplevel=false
value="VD D 0 pulse(0 1.8 0 40p 40p 5n 10n) dc 0
VE E 0 pulse(0 1.8 2.5n 40p 40p 50n 75n) dc 0
VP VPWR 0 dc 1.8
.control
tran 40p 300n
write dlatch_bench.raw
.endc"}
C {devices/code.sym} 630 -590 0 0 {name=MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false}
