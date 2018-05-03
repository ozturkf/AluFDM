N001 R20=200 (Periodendauer in ms)
N002 R21=5000 (Ventilöffnung in us)
N003 R101=1 (Laufvariable)
N004 R102=1

N218 G01 X-25 Y-13 Z0.9 F330
N219 @136 R101 K3 K251     (Schleife für 3maliges Fahren der Route)
N220 G90 X-2 Y-10	   (Fahrt zur absoluten Koordinate X-25/Y-10)
N221 Y-8		   (Fahrt zur Absoluten Koordinate Y-8)
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
N240 @100 K-222		   (Schleifenende, springe auf Zeile 122)	
N241 R102=1
N242 G90 X1		   
N243 X6 M10		   (Fünfte Linie Wuerfel1)
N244 X9
N245 X14 M10		   (Fünfte Linie Wuerfel2)
N246 X17
N247 X22 M10	           (Fünfte Linie Wuerfel3) 
N248 X25
N249 R101=R101+1
N250 @100 K-219
N251 R101=1



N901 M30


