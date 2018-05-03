N001 R20=200 (Periodendauer in ms)
N002 R21=5000 (Ventil�ffnung in us)
N003 R101=1 (Laufvariable)
N004 R102=1

(Linien drucken vorbereiten)
N101 R11=750 (Duesentemp)
N102 R10=500 (Platform Temp)
N103 M11 (Temperatur Check)
N104 M0	 (Reset T-Check, kommt immer nach M11)
N110 G01 X-25 Y-13 Z0 F330 (Geradeninterpolation zu Koordinate mit Geschwindigkeit 330mm/min)
N111 Z0.9		   (Geradeninterpolation nach Z0.9)
N112 X-20		   (Geradeninterpolation nach x-20-> jetzt auf Koordinate x-20/Y-13/Z0.9)
N113 M10 X0		   (Druckimpuls mit M10 und Fahrt nach X-10/Y-13/Z0.9)(Testlinie)

(Drucken der ersten Schicht Quader1)

N120 G90 X-25 Y-10	   (Fahrt zur absoluten Koordinate X-25/Y-10)
N121 Y-8		   (Fahrt zur Absoluten Koordinate Y-8)
N122 @136 R102 K2 K133     (Schleifenbefehl wenn Laufvariable R102 Kleiner gleich 2, falls nicht dann auf Zeile K133 springen)
N123 G90 X-23		   (Fahrt zu X-23)
N124 X9 M10		   (Fahrt bis X9 und gleichzeitiger Druckimpuls)
N125 X11		   (Weiterfahrt bis x11, Beschleunigungen sollen keinen Einfluss haben)
N126 G91 Y1		   (relative Fahrt um Y1.2-> Breitenversatz erster zu zweiter Linie)	
N127 G90 X9.5		   (Fahrt nach X9.5)
N128 X-22.5 M10		   (Fahrt nach X-22.5 und gleichzeiter Druckimpuls)(0,5 mm XVersatz, damit Tropfen in L�ckenliegen)
N129 X-25		   (Fahrt bis X-25 ohne druckimpuls)
N130 G91 Y1		   (Relative Fahrt um Y1.2 f�r Breitenversatz)
N131 R102=R102+1	   (erh�hen Laufvariable R102 um 1 auf 2)
N132 @100 K-122		   (Schleifenende, springe auf Zeile 122)	
N133 G90 X-23		   (Fahrt auf x-23)		
N134 X9 M10		   (Fahrt auf X9 mit gleichzeitigem Drucken)
N135 X11		   (Fahrt auf X11)
N136 R102=1		   (R�cksetzen der Laufvariable 102 auf 1)
N137 @714		   (Dekoder Stopp, notwendig vor Temperatur Aenderung)
N138 R11=750
N139 R10=550
N140 M11
N141 M0		   



(Drucken der n�chsten 3 Schichten )

N302 @136 R101 K6 K327 (Schleife f�r 3maliges Fahren der Route)
N303 G91 Z0.88   (F�r jede Schicht um 0.88 absenken)

N304 G90 X-25 Y-10  (Startpunkt Quader1)
N305 Y-8
N310 @136 R102 K2 K321 (Drucken der Schicht Quader 1)
N311 G90 X-23
N312 X9 M10
N313 X11
N314 G91 Y1
N315 G90 X9.5
N316 X-22.5 M10
N317 X-25
N318 G91 Y1
N319 R102=R102+1
N320 @100 K-310
N321 G90 X-23
N322 X9 M10
N323 X11
N324 R102=1
N325 R101=R101+1
N326 @100 K-302
N327 R101=1


N400 G90 X-25 Y-10
N401 Y-8
N402 G91 Z0.88
N403 G90 X-23
N404 X9
N405 X11
N406 G91 Y1
N407 G90 X9.5
N408 X-22.5 M10
N409 X-25
N410 G91 Y1
N411 G90 X-23
N412 X9 M10
N413 X11
N414 G91 Y1
N415 G90 X9.5
N416 X-22.5 M10
N417 X-25










N901 M30