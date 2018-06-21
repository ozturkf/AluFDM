
N001 R20=20 (Periodendauer in ms)
N002 R21=600 (Ventilöffnung in us)
N003 R22=1500 (Nozzle pressure)
N004 R23=20 (Oxygen Concentration)
N005 R101=1 (Layers)
N006 R102=1	(# of Lines)
N007 R11=700 (Nozzle Temp)
N008 R10=480 (Platform Temp)
N049 M11 (CheckTemp)
N050 M0  (ConfirmTemp)

N110 G01 X-24 Y20 Z7 F1320 (Geradeninterpolation zu Koordinate mit Geschwindigkeit 660mm/min)
N111 X-20		     (Geradeninterpolation nach x-20-> jetzt auf Koordinate x-20/Y-13/Z0.9)
N112 M10 X0		     (Druckimpuls mit M10 und Fahrt nach X-10/Y-13/Z0.9)(Testlinie)


N201 R101=1

N210 G01 X-10 Y0 Z7 F1320
N220 @136 R101 K50 K300
N225 G91 G02 X20 Y0 I10 J0 Z0.19 Q1=12 M10
N230 G91 G02 X-20 Y0 I-10 J0 Z0.19 Q1=12 M10
N240 R101=R101+1
N250 @100 K-220
N300 M30 