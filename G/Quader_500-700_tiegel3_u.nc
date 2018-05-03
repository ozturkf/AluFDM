N001 R20=200 (Periodendauer in ms)
N002 R21=2000 (Ventilöffnung in us)
N003 R101=1 (Laufvariable)
N004 R102=1

(Linien drucken vorbereiten)
N101 R11=700 (Duesentemp)
N102 R10=400 (Platform Temp)
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
N128 X-22.5 M10		   (Fahrt nach X-22.5 und gleichzeiter Druckimpuls)(0,5 mm XVersatz, damit Tropfen in Lückenliegen)
N129 X-25		   (Fahrt bis X-25 ohne druckimpuls)
N130 G91 Y1		   (Relative Fahrt um Y1.2 für Breitenversatz)
N131 R102=R102+1	   (erhöhen Laufvariable R102 um 1 auf 2)
N132 @100 K-122		   (Schleifenende, springe auf Zeile 122)	
N133 G90 X-23		   (Fahrt auf x-23)		
N134 X9 M10		   (Fahrt auf X9 mit gleichzeitigem Drucken)
N135 X11		   (Fahrt auf X11)
N136 R102=1		   (Rücksetzen der Laufvariable 102 auf 1)
		   


(Drucken der ersten Schicht Quader2)


N220 G90 X-25 Y0	   (Fahrt zur absoluten Koordinate X-25/Y-10)
N221 Y2			   (Fahrt zur Absoluten Koordinate Y-8)
N222 @136 R102 K2 K233     (Schleifenbefehl wenn Laufvariable R102 Kleiner gleich 2, falls nicht dann auf Zeile K133 springen)
N223 G90 X-23		   (Fahrt zu X-23)
N224 X9 M10		   (Fahrt bis X9 und gleichzeitiger Druckimpuls)
N225 X11		   (Weiterfahrt bis x11, Beschleunigungen sollen keinen Einfluss haben)
N226 G91 Y1		   (relative Fahrt um Y1.2-> Breitenversatz erster zu zweiter Linie)	
N227 G90 X9.5		   (Fahrt nach X9.5)
N228 X-22.5 M10		   (Fahrt nach X-22.5 und gleichzeiter Druckimpuls)(0,5 mm XVersatz, damit Tropfen in Lückenliegen)
N229 X-25		   (Fahrt bis X-25 ohne druckimpuls)
N230 G91 Y1		   (Relative Fahrt um Y1.2 für Breitenversatz)
N231 R102=R102+1	   (erhöhen Laufvariable R102 um 1 auf 2)
N232 @100 K-222		   (Schleifenende, springe auf Zeile 122)	
N233 G90 X-23		   (Fahrt auf x-23)		
N234 X9 M10		   (Fahrt auf X9 mit gleichzeitigem Drucken)
N235 X11		   (Fahrt auf X11)
N236 R102=1		   (Rücksetzen der Laufvariable 102 auf 1)
N237 @714		   (Dekoder Stopp, notwendig vor Temperatur Aenderung)
N238 R11=700
N239 R10=500
N240 M11
N241 M0



(Drucken der nächsten 3 Schichten )

N302 @136 R101 K3 K349 (Schleife für 3maliges Fahren der Route)
N303 G91 Z0.8   (Für jede Schicht um 0.88 absenken)

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

N330 

N331 G90 X-25 Y0    (Startpunkt Quader 2) 
N332 Y2
N333 @136 R102 K2 K344 (Drucken der Schicht Quader2)
N334 G90 X-23
N335 X9 M10
N336 X11
N337 G91 Y1
N338 G90 X9.5
N339 X-22.5 M10
N340 X-25
N341 G91 Y1
N342 R102=R102+1
N343 @100 K-333
N344 G90 X-23
N345 X9 M10
N346 X11
N347 R102=1

R101=R101+1
N348 @100 K-302
N349 R101=1













N901 M30