N001 R20=200 (Periodendauer in ms)
N002 R21=4000 (Ventilöffnung in us)
N003 R101=1 (Laufvariable)
N004 R102=1

(Linien drucken vorbereiten)
N101 R11=700 (Duesentemp)
N102 R10=500 (Platform Temp)
N103 M11 (Temperatur Check)
N104 M0	 (Reset T-Check, kommt immer nach M11)
N110 G01 X-25 Y-20  F330 (Geradeninterpolation zu Koordinate mit Geschwindigkeit 330mm/min)

N111 X-20		   (Geradeninterpolation nach x-20-> jetzt auf Koordinate x-20/Y-13/Z0.9)
N112 M10 X-10		   (Druckimpuls mit M10 und Fahrt nach X-10/Y-13/Z0.9)(Testlinie)

(Drucken der ersten Schicht Wuerfel4, Wuerfel5, Wuerfel6)

N120 G90 X-2 Y0	   (Fahrt zur absoluten Koordinate X-25/Y-10)
N121 Y2		   (Fahrt zur Absoluten Koordinate Y-8)
N122 @136 R102 K2 K141     (Schleifenbefehl wenn Laufvariable R102 Kleiner gleich 2, falls nicht dann auf Zeile K133 springen)
N123 G90 X1		   (Fahrt zu X-23)
N124 X6 M10		   (Druck Linie Wuerfel1)
N125 X9
N126 X14 M10		   (Druck Linie Wuerfel2)
N127 X17
N128 X22 M10		   (Druck Linie Wuerfel3)
N129 X25		   
N130 G91 Y1		   	
N131 G90 X22.5		   
N132 X17.5 M10		   (Versatzlinie Wuerfel1)
N133 X14.5
N134 X9.5 M10	           (Versatzlinie Wuerfel2)
N135 X6.5
N136 X1.5 M10		   (Versatzlinie Wuerfel3)
N137 X-2		   (Fahrt bis X-25 ohne druckimpuls)
N138 G91 Y1		   (Relative Fahrt um Y1 für Breitenversatz)
N139 R102=R102+1	   (erhöhen Laufvariable R102 um 1 auf 2)
N140 @100 K-122		   (Schleifenende, springe auf Zeile 122)	
N141 G90 X1		   
N142 X6 M10		   (Fünfte Linie Wuerfel1)
N143 X9
N144 X14 M10		   (Fünfte Linie Wuerfel2)
N145 X17
N146 X22 M10	           (Fünfte Linie Wuerfel3) 
N147 X25
N148 R101=1
N149 R102=1
N150 @714		   (Dekoder Stopp, notwendig vor Temperatur Aenderung)
N151 R11=700
N152 R10=500
N153 M11
N154 M0		   

(Drucken der uebrigen 3 Schichten Wuerfel4, Wuerfel5, Wuerfel 6)

N200 @136 R101 K3 K251     (Schleife für 3maliges Fahren der Route)
N220 G90 X-2 Y0	   (Fahrt zur absoluten Koordinate X-25/Y-10)
N221 Y2		   (Fahrt zur Absoluten Koordinate Y-8)
N222 @136 R102 K2 K241     (Schleifenbefehl wenn Laufvariable R102 Kleiner gleich 2, falls nicht dann auf Zeile K133 springen)
N223 G90 X1		   (Fahrt zu X-23)
N224 X6 M10		   (Druck Linie Wuerfel1)
N225 X9
N226 X14 M10		   (Druck Linie Wuerfel2)
N227 X17
N228 X22 M10		   (Druck Linie Wuerfel3)
N229 X25		   
N230 G91 Y1		   	
N231 G90 X22.5		   
N232 X17.5 M10		   (Versatzlinie Wuerfel1)
N233 X14.5
N234 X9.5 M10	           (Versatzlinie Wuerfel2)
N235 X6.5
N236 X1.5 M10		   (Versatzlinie Wuerfel3)
N237 X-2		   (Fahrt bis X-25 ohne druckimpuls)
N238 G91 Y1		   (Relative Fahrt um Y1 für Breitenversatz)
N239 R102=R102+1	   (erhöhen Laufvariable R102 um 1 auf 2)
N240 @100 K-222	
N241 R102=1	   (Schleifenende, springe auf Zeile 122)	
N242 G90 X1		   
N243 X6 M10		   (Fünfte Linie Wuerfel1)
N244 X9
N245 X14 M10		   (Fünfte Linie Wuerfel2)
N246 X17
N247 X22 M10	           (Fünfte Linie Wuerfel3) 
N248 X25
N249 R101=R101+1
N250 @100 K-200
N251 R101=1
N252 R102=1


N901 M30


