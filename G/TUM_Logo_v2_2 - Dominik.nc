N001 R20=200		(Periodendauer in ms)
N002 R21=2000		(Ventilöffnung in us)
N003 R11=700 		(Druckkopftemperatur initialsieren)
N004 R10=450		(Plattformtemperatur initialisieren)
N005 R101=1			(Laufvariable)
N006 R102=1			(Laufvariable)

N101 M11				(Temperaturcheck)
N102 M0 				(Reset-T check, kommt immer nach M11)
N103 G01 X-25 Y-22 F330 (Geradeninterpolation zum Absolutpunkt -25/-22 mit 330 mm/min)
N105 X-22				(fahre zur Absolutkoordinate X = -22)
N106 M10 X-10			(Drucke Probelinie bis X = -10)

N110 @136 R102 K2 K900	(While-Schleife: ausführen solange R102 der Wert kleiner oder gleich 2 ist, dann Sprung zur Zeile 900)
N111 G90 X-22 Y-22		(Fahre Absolutkoordinate -22/-22 an)
N112 G91 Y5				(relative Bewegung  nach Y -17)

N120 @136 R101 K4 K160	(While-Schleife: ausführen solange R102 der Wert kleiner oder gleich 4 ist, dann Sprung zur Zeile 160)
N121 G91 X2 F330		(Relativbewegung um 2 X mit 330mm/min)
N122 M10 X3.2			(3.2 X drucken)
N123 X3.4				(um 3.4 X versetzen)
N124 M10 X3.2			(3.2 X drucken)
N125 X3.4				(um 3.4 X fahren)
N126 M10 X9.8			(9.8 X drucken)
N127 X3.4				(um 3.4 X fahrenn)
N128 M10 X3.2			(3.2 X drucken)
N129 X3.4				(um 3.4 X fahren)
N130 Y1					(um 1 Y fahren)
N131 G90 X-22 F1000		(bewege den Plattform nach -22/Y mit 1000 mm/min)

N150 R101=R101+1		(R101 um 1 erhöhen)
N151 @100 K-120			(springe zur Zeile 120 zurück +/- gibt Richtung an)

N160 R101=1				(Laufvariable zurücksetzen)
N161 @136 R101 K14 K210 	
N162 G91 X2 F330
N163 M10 X3.2
N164 X3.4
N165 M10 X3.2
N166 X3.4
N167 M10 X3.2
N168 X3.4
N169 M10 X3.2
N170 X3.4
N171 M10 X3.2
N172 X3.4
N173 Y1
N174 G90 X-22 F1000

N192 R101=R101+1
N193 @100 K-161

N210 R101=1
N211 @136 R101 K4 K240
N212 G91 X2 F330
N213 M10 X16.4
N214 X3.4
N215 M10 X13.2
N216 Y1
N217 G90 X-22 F1000

N225 R101=R101+1
N226 @100 K-211

N240 R101=1
N241 R102=R102+1
N242 G91 Z0.8
N260 @100 K-110

N900 M30
