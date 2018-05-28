N001 R20=50 (Periodendauer in ms)
N002 R21=880 (Ventilöffnung in us)
N003 R101=1(Laufvariable)
N004 R102=1

(Linien drucken vorbereiten)
N101 R11=650 (Duesentemp)
N102 R10=500 (Platform Temp)
N103 M11 (Temperatur Check)
N104 M0	 (Reset T-Check, kommt immer nach M11)
N110 G01 X-25 Y0 Z-1 F480 (Geradeninterpolation zu Koordinate mit Geschwindigkeit 330mm/min)
N112 X-20 Z0		   (Geradeninterpolation nach x-20-> jetzt auf Koordinate x-20/Y-13/Z0.9)
N113 M10 X-10		   (Druckimpuls mit M10 und Fahrt nach X-10/Y-13/Z0.9)(Testlinie)			
		   

N140 G90 Y-6 F440		   (Fahrt zur Absoluten Koordinate Y-8)
N141 @136 R102 K4 K148     (Schleifenbefehl wenn Laufvariable R102 Kleiner gleich 2, falls nicht dann auf Zeile K133 springen)
N142 G90 X-23		   (Fahrt zu X-23)
N143 X-20
N144 X10 M10		   (Fahrt bis X9 und gleichzeitiger Druckimpuls)
N146 R102=R102+1	   (erhöhen Laufvariable R102 um 1 auf 2)
N147 @100 K-141 	   (Schleifenende, springe auf Zeile 122)
N148 R102=1

N150 G90 Y-9 F520		   (Fahrt zur Absoluten Koordinate Y-8)
N151 @136 R102 K4 K158     (Schleifenbefehl wenn Laufvariable R102 Kleiner gleich 2, falls nicht dann auf Zeile K133 springen)
N152 G90 X-23		   (Fahrt zu X-23)
N153 X-20
N154 X10 M10		   (Fahrt bis X9 und gleichzeitiger Druckimpuls)
N156 R102=R102+1	   (erhöhen Laufvariable R102 um 1 auf 2)
N157 @100 K-151 	   (Schleifenende, springe auf Zeile 122)
N158 R102=1

N200 M30