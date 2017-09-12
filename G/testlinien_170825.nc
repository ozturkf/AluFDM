N001 R20=200
N002 R21=5000					

(Linien drucken vorbereiten)
N101 R11=650 (Duesentemp)
N102 R10=400 (Platform Temp)
N103 M11 (Temperatur Check)
N104 M0
N110 G01 X-25 Y-13 Z0 F330
N111 Z0.8
N112 X-20
N113 M10 X1.5
N114 G91 Y3
