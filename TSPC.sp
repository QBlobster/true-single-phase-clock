**** divider ****
.subckt DFF CLK outb VDD VSS m='1'
mp0 s10 CLK VDD VDD pmos w=0.2u l=0.09u m='m*8'
mp1 s1o outb S10 VDD pmos w=0.2u l=0.09u m='m*8'
mn0 s1o outb VSS VSS nmos w=0.2u l=0.09u m='m*4'

mp2 s2o CLK VDD VDD pmos w=0.2u l=0.09u m='m*8'
mn1 s2o s1o VSS VSS nmos w=0.2u l=0.09u m='m*5'

mp3 outb s2o VDD VDD pmos w=0.2u l=0.09u m='m*7'
mn2 outb s2o s20 VSS nmos w=0.2u l=0.09u m='m*6'
mn3 s20 CLK VSS VSS nmos w=0.2u l=0.09u m='m*6'
.ends

.subckt DFFC CLK outb VDD VSS m='1'
mp0 s10 CLK VDD VDD pmos w=0.2u l=0.09u m='m*3'
mp1 s1o outb S10 VDD pmos w=0.2u l=0.09u m='m*3'
mn0 s1o outb VSS VSS nmos w=0.2u l=0.09u m='m*2'

mp2 s2o CLK VDD VDD pmos w=0.2u l=0.09u m='m*2'
mn1 s2o s1o s2s VSS nmos w=0.2u l=0.09u m='m*3'
mn4 s2s CLK VSS VSS nmos w=0.2u l=0.09u m='m*3'

mp3 outb s2o VDD VDD pmos w=0.2u l=0.09u m='m*3'
mn2 outb s2o s20 VSS nmos w=0.2u l=0.09u m='m*2'
mn3 s20 CLK VSS VSS nmos w=0.2u l=0.09u m='m*2'
.ends

.subckt IBUF in out VDD VSS m='1'
XBUF0 in out0 VDD VSS / INV m_PUP='m*45' m_PDN='m*18'
XBUF1 out0 out1 VDD VSS / INV m_PUP='m*30' m_PDN='m*15'
XBUF2 out1 out2 VDD VSS / INV m_PUP='m*30' m_PDN='m*15'
XBUF3 out2 out3 VDD VSS / INV m_PUP='m*30' m_PDN='m*15'
XBUF4 out3 out4 VDD VSS / INV m_PUP='m*30' m_PDN='m*15'
XBUF5 out4 out5 VDD VSS / INV m_PUP='m*30' m_PDN='m*15'
XBUF6 out5 out6 VDD VSS / INV m_PUP='m*15' m_PDN='m*7'
XBUF out6 out VDD VSS / INV m_PUP='m*12' m_PDN='m*7'
.ends

.subckt INV in out VDD VSS m_PUP='1' m_PDN='1'
mp0 out in VDD VDD pmos w=0.2u l=0.09u m=m_PUP
mn0 out in VSS VSS nmos w=0.2u l=0.09u m=m_PDN
.ends

.subckt BUF in out VDD VSS m_PUP='1' m_PDN='1'
mp0 outb in VDD VDD pmos w=0.2u l=0.09u m=m_PUP
mn0 outb in VSS VSS nmos w=0.2u l=0.09u m=m_PDN
mp1 out outb VDD VDD pmos w=0.2u l=0.09u  m=m_PUP
mn1 out outb VSS VSS nmos w=0.2u l=0.09u m=m_PDN
.ends

.subckt OBUFA in out VDD VSS
XBUFout0 in out0 VDD VSS / INV m_PUP='2' m_PDN='1'
XBUFout01 out0 out01 VDD VSS / INV m_PUP='3' m_PDN='1'
XBUFout02 out01 out02 VDD VSS / INV m_PUP='4' m_PDN='2'
XBUFout03 out02 out03 VDD VSS / INV m_PUP='5' m_PDN='2'
XBUFout1 out03 out1 VDD VSS / INV m_PUP='6' m_PDN='3'
XBUFout2 out1 out2 VDD VSS / INV m_PUP='12' m_PDN='6'
XBUFout23 out2 out23 VDD VSS / INV m_PUP='24' m_PDN='12'
XBUFout24 out23 out24 VDD VSS / INV m_PUP='48' m_PDN='24'
XBUFout41 out24 out41 VDD VSS / INV m_PUP='96' m_PDN='32'
XBUFout42 out41 out VDD VSS / INV m_PUP='210' m_PDN='64'
.ends

.subckt OBUFB in out VDD VSS
XBUFout0 in out0 VDD VSS / INV m_PUP='2' m_PDN='1'
XBUFout01 out0 out01 VDD VSS / INV m_PUP='3' m_PDN='1'
XBUFout1 out01 out1 VDD VSS / INV m_PUP='4' m_PDN='2'
XBUFout2 out1 out2 VDD VSS / INV m_PUP='6' m_PDN='3'
XBUFout23 out2 out23 VDD VSS / INV m_PUP='12' m_PDN='4'
XBUFout24 out23 out24 VDD VSS / INV m_PUP='15' m_PDN='5'
XBUFout41 out24 out41 VDD VSS / INV m_PUP='30' m_PDN='10'
XBUFout42 out41 out VDD VSS / INV m_PUP='70' m_PDN='20'
.ends

.subckt OBUFC in out VDD VSS
XBUFout0 in out0 VDD VSS / INV m_PUP='2' m_PDN='1'
XBUFout01 out0 out01 VDD VSS / INV m_PUP='3' m_PDN='1'
XBUFout1 out01 out1 VDD VSS / INV m_PUP='4' m_PDN='2'
XBUFout2 out1 out2 VDD VSS / INV m_PUP='6' m_PDN='3'
XBUFout23 out2 out23 VDD VSS / INV m_PUP='12' m_PDN='4'
XBUFout24 out23 out VDD VSS / INV m_PUP='28' m_PDN='9'
.ends

XIBUF CLK CLKO VDD VSS / IBUF

XDFFAR CLKO outAR VDD VSS / DFF m=m
XDFFBR outAR outBR VDD VSS / DFFC m=m
XDFFCR outBR outCR VDD VSS / DFFC m=m

XOBUFA outAR outA VDD VSS / OBUFA
XOBUFB outBR outB VDD VSS / OBUFB
XOBUFC outCR outC VDD VSS / OBUFC

CoutA outA VSS 0.1pf
CoutB outB VSS 0.1pf
CoutC outC VSS 0.1pf

.param VS = '1V'
.param TFT = '0.02n'
.param m = '1'

VDD VDD GND PWL(0n VS 'TFT/10' VS)
VSS VSS GND 0
VCLK CLK VSS PULSE(0 VS TFT 0.001n 0.001n 'TFT' 'TFT*2')

.tran 0.1n 'TFT*200'

.op
.option post
.options post_version=9601
.option post ingold=1
.option measform=2
.option probe
.probe power=par('V(VDD)*I(VDD)')
.probe V(*) I(*)

.measure tran CLKT trig v(CLKO) val='VS*0.5' rise=5 targ v(CLKO) val='VS*0.5' rise=6
.measure tran CLKPW trig v(CLKO) val='VS*0.5' rise=5 targ v(CLKO) val='VS*0.5' fall=5

.measure tran power AVG 'ABS(V(VDD)*I(VDD))' from = 0 to = 'TFT*30'
.measure tran TFTOA trig v(outA) val='VS*0.5' rise=6 targ v(outA) val='VS*0.5' rise=7
.measure tran trA trig v(outA) val='VS*0.1' rise=6 targ v(outA) val='VS*0.9' rise=6
.measure tran tfA trig v(outA) val='VS*0.9' fall=6 targ v(outA) val='VS*0.1' fall=6
.measure tran pwA trig v(outA) val='VS*0.5' rise=6 targ v(outA) val='VS*0.5' fall=6
.measure tran pwbA trig v(outA) val='VS*0.5' fall=6 targ v(outA) val='VS*0.5' rise=7
.measure trpA param='trA/TFTOA'
.measure tfpA param='tfA/TFTOA'
.measure duty_cycleOA param='pwA/TFTOA'
.measure duty_cyclebOA param='pwbA/TFTOA'
.measure duty_cycleclk param='CLKPW/CLKT'

.measure tran TFTOB trig v(outB) val='VS*0.5' rise=6 targ v(outB) val='VS*0.5' rise=7
.measure tran trB trig v(outB) val='VS*0.1' rise=6 targ v(outB) val='VS*0.9' rise=6
.measure tran tfB trig v(outB) val='VS*0.9' fall=6 targ v(outB) val='VS*0.1' fall=6
.measure tran pwB trig v(outB) val='VS*0.5' rise=6 targ v(outB) val='VS*0.5' fall=6
.measure tran pwbB trig v(outB) val='VS*0.5' fall=6 targ v(outB) val='VS*0.5' rise=7
.measure trpB param='trB/TFTOB'
.measure tfpB param='tfB/TFTOB'
.measure duty_cycleOB param='pwB/TFTOB'
.measure duty_cyclebOB param='pwbB/TFTOB'

.measure tran TFTOC trig v(outC) val='VS*0.5' rise=6 targ v(outC) val='VS*0.5' rise=7
.measure tran trC trig v(outC) val='VS*0.1' rise=6 targ v(outC) val='VS*0.9' rise=6
.measure tran tfC trig v(outC) val='VS*0.9' fall=6 targ v(outC) val='VS*0.1' fall=6
.measure tran pwC trig v(outC) val='VS*0.5' rise=6 targ v(outC) val='VS*0.5' fall=6
.measure tran pwbC trig v(outC) val='VS*0.5' fall=6 targ v(outC) val='VS*0.5' rise=7
.measure trpC param='trC/TFTOC'
.measure tfpC param='tfC/TFTOC'
.measure duty_cycleOC param='pwC/TFTOC'
.measure duty_cyclebOC param='pwbC/TFTOC'

.protect
.inc './ptm90.l'
.unprotect
.temp 27

.end