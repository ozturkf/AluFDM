N001 R20=200 (Periodendauer in ms)
N002 R21=6500 (Ventilöffnung in us)
N003 R101=1 (Laufvariable)
N004 R102=1

(Linien drucken vorbereiten)
N101 R11=650 (Duesentemp)
N102 R10=400 (Platform Temp)
N103 M11 (Temperatur Check)
N104 M0	 (Reset T-Check, kommt immer nach M11)
N110 G01 X20 Y0 Z20 F330 (Geradeninterpolation zu Koordinate mit Geschwindigkeit 330mm/min)

N112 Y5		   (Geradeninterpolation nach x-20-> jetzt auf Koordinate x-20/Y-13/Z0.9)
N113 M10 Y15		   (Druckimpuls mit M10 und Fahrt nach X-10/Y-13/Z0.9)(Testlinie)

N901 M30