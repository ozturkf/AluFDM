N001 R20=50 (Periodendauer in ms)
N002 R21=880 (Ventilöffnung in us)
N003 R101=1(Laufvariable)
N004 R102=1

(Linien drucken vorbereiten)
N101 R11=650 (Duesentemp)
N102 R10=500 (Platform Temp)
N103 M11 (Temperatur Check)
N104 M0	 (Reset T-Check, kommt immer nach M11)
N110 G01 X-25 Y0 Z-1 F520 (Geradeninterpolation zu Koordinate mit Geschwindigkeit 330mm/min)
N112 X-20 Z0		   (Geradeninterpolation nach x-20-> jetzt auf Koordinate x-20/Y-13/Z0.9)
N113 M10 X-10		   (Druckimpuls mit M10 und Fahrt nach X-10/Y-13/Z0.9)(Testlinie)



N120 G90 X-25 Y0	   (Fahrt zur absoluten Koordinate X-25/Y-10)
N121 Y-3		   (Fahrt zur Absoluten Koordinate Y-8)
N122 @136 R102 K5 K133     (Schleifenbefehl wenn Laufvariable R102 Kleiner gleich 2, falls nicht dann auf Zeile K133 springen)
N123 G90 X-23 Y0 F520			(Fahrt zu X-23)
N124 X-20 Y-3
N124 X10 M10		   (Fahrt bis X9 und gleichzeitiger Druckimpuls)		
		   

N140 G90 Y-6 F560		   (Fahrt zur Absoluten Koordinate Y-8)
N142 G90 X-23		   (Fahrt zu X-23)
N143 X-20
N144 X10 M10		   (Fahrt bis X9 und gleichzeitiger Druckimpuls)

N150 G90 Y-9 F600		   (Fahrt zur Absoluten Koordinate Y-8)
N152 G90 X-23		   (Fahrt zu X-23)
N153 X-20
N154 X10 M10		   (Fahrt bis X9 und gleichzeitiger Druckimpuls)
N155 G91 Z0.3
N156 R102=R102+1	   (erhöhen Laufvariable R102 um 1 auf 2)
N157 @100 K-122	   (Schleifenende, springe auf Zeile 122)
N158 R102=1

N200 M30