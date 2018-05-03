N001 R20=200 (Periodendauer in ms)
N002 R21=4000 (Ventilöffnung in us)
N003 R101=1 (Laufvariable)
N004 R102=1

(Linien drucken vorbereiten)
N100 @714
N101 R11=650 (Duesentemp)
N102 R10=400 (Platform Temp)
N103 M11 (Temperatur Check)
N104 M0	 (Reset T-Check, kommt immer nach M11)
N110 G01 X-25 Z25 Y-20 F900 (Geradeninterpolation zu Koordinate mit Geschwindigkeit 330mm/min)
		   (Geradeninterpolation nach Z0.9)
N112 X-20		   (Geradeninterpolation nach x-20-> jetzt auf Koordinate x-20/Y-13/Z0.9)
N113 M10 X-10		   (Druckimpuls mit M10 und Fahrt nach X-10/Y-13/Z0.9)(Testlinie)

(Drucken der ersten Linie)

N120 G90 X0 Y5	   (Fahrt zur absoluten Koordinate X-25/Y-10)
N121 Y8
N122 M10 Y20 		   (Fahrt zur Absoluten Koordinate Y-8)



N901 M30


