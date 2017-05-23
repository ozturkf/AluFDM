N01 R20=100 (Zeit zwischen zwei Tropfen in ms)
N02 R21=5000 (Zeit des Druckpulses je Tropfen in µs)
N03 R122=1 (Laufvariable für Anzahl der Linien Fläche)
N04 R123=1 (Laufvariable Linien Block 1 und Block 3)
N05 R124=1 (Laufvariable Linien Block 2)
N06 R125=0 (Laufvariable Schichten TUM-Logo)


(Fläche drucken)
N06 G90 X25 Y-10 Z2 F570
N07 @136 R122 K21 K55 (while Schleife kleiner oder gleich)
N10 G90 X25 
N15 G01 X22.5 
N20 M10 X-22.5 
N25 G91 y0.95
N45 R122=R122+1
N50 @100 K-07 (Zurückspringen zum Anfang der Schleife, Vorzeichen gibt Sprungrichtung in Code an)


(TUM-Logo)
N55 G91 Z0.7 (Höhe für Z-Ebene)


(Block 1)
N99 G90 X14 Y-7 F570  (Starpunkt mit 2mm Beschleunigungsweg)
N100 @136 R123 K2 K200

N110 G90 X12.5
N115 M10 X10 
N120 X7.5
N140 M10 X5
N150 X2.5
N160 M10 x-5
N170 X-7.5
N180 M10 X-10
N190 G91 Y0.95
N191 R123=R123+1
N192 @100 K-100

(Block 2)
N200 @136 R124 K10 K300
N205 G90 X14 F570
N210 G01 X12.5
N215 M10 X10
N220 X7.5
N225 M10 X5
N230 X2.5
N235 M10 X0
N240 X-2.5
N245 M10 X-5
N250 X-7.5
N255 M10 X-10
N260 G91 Y0.95
N265 R124=R124+1
N270 @100 K-200

(Block 3)
N299 R123=1
N300 @136 R123 K4 K400
N305 G90 X14.5 F570
N310 G01 X12.5
N315 M10 X0
N320 X-2.5
N325 M10 X-12.5
N330 G01 Y0.95
N330 R123=R123+1
N335 @100 K-300
 
N400 R125=R125+1
N405 @141 R125 K3 K55

X-25.00 Y-23.40
M30 (Programmende)