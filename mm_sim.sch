v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 280 -280 300 -280 {
lab=in12}
N 380 -280 400 -280 {
lab=out12}
N 390 -340 390 -280 {
lab=out12}
N 290 -340 290 -280 {
lab=in12}
N 280 -180 300 -180 {
lab=in3}
N 380 -180 400 -180 {
lab=out3}
N 390 -180 390 -140 {
lab=out3}
N 290 -180 290 -140 {
lab=in3}
N 200 -280 200 -180 {
lab=A}
N 160 -280 200 -280 {
lab=A}
C {inv12.sym} 240 -280 0 0 {name=x1 VDD=VDD GND=GND prefix=INV12}
C {inv12.sym} 340 -280 0 0 {name=x2 VDD=VDD GND=GND prefix=INV12}
C {inv12.sym} 440 -280 0 0 {name=x3 VDD=VDD GND=GND prefix=INV12}
C {inv3.sym} 240 -180 0 0 {name=x4 VDD=VDD GND=GND prefix=INV3}
C {inv3.sym} 340 -180 0 0 {name=x5 VDD=VDD GND=GND prefix=INV3}
C {inv3.sym} 440 -180 0 0 {name=x6 VDD=VDD GND=GND prefix=INV3}
C {devices/lab_pin.sym} 290 -340 0 0 {name=p1 sig_type=std_logic lab=in12}
C {devices/lab_pin.sym} 390 -340 0 0 {name=p2 sig_type=std_logic lab=out12}
C {devices/lab_pin.sym} 390 -140 0 0 {name=p3 sig_type=std_logic lab=out3}
C {devices/lab_pin.sym} 290 -140 0 0 {name=p4 sig_type=std_logic lab=in3}
C {devices/ipin.sym} 160 -280 0 0 {name=p5 lab=A}
C {devices/code.sym} 90 -440 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt_mm

"
spice_ignore=false}
C {devices/code_shown.sym} 520 -470 0 0 {name=ngspice
only_toplevel=false
value="VA A 0 pulse(0 1.8 0 40p 40p 1n 2n) dc 0
VD VDD 0 dc 1.8
.include ~/lab240921/INV12_pex_extracted.spice
.include ~/lab240921/INV3_pex_extracted.spice
.control
set wr_vecnames
set wr_singlescale
let count = 0
dowhile count < 30
  save out12 out3
  tran 1p 4n
  write ~/mc_\{$&count\}.raw
  reset
  let count = count + 1
end
.endc"}
