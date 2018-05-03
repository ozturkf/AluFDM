N001 R20=200 (Periodendauer in ms)
N002 R21=3500 (Ventilöffnung in us)
N003 R101=1 (Laufvariable)
N004 R102=1


N110 G01 X-25 Y-13 F330 (Geradeninterpolation zu Koordinate mit Geschwindigkeit 330mm/min)
N111 X-20		     (Geradeninterpolation nach x-20-> jetzt auf Koordinate x-20/Y-13/Z0.9)
N112 M10 X-10		     (Druckimpuls mit M10 und Fahrt nach X-10/Y-13/Z0.9)(Testlinie)

(Drucken der nächsten 3 Schichten Quader1)

N202 @136 R101 K3 K249 (Schleife für 3maliges Fahren der Route)
N203 G91 Z0.88   (Für jede Schicht um 0.88 absenken)

N204 G90 X-25 Y-10  (Startpunkt Quader1)
N205 Y-8
N210 @136 R102 K2 K221 (Drucken der Schicht Quader 1)
N211 G90 X-23
N212 X9 M10
N213 X11
N214 G91 Y1
N215 G90 X9.5
N216 X-22.5 M10
N217 X-25
N218 G91 Y1
N219 R102=R102+1
N220 @100 K-210
N221 G90 X-23
N222 X9 M10
N223 X11
N224 R102=1

N230 

N231 G90 X-25 Y0    (Startpunkt Quader 2) 
N232 Y2
N233 @136 R102 K2 K244 (Drucken der Schicht Quader2)
N234 G90 X-23
N235 X9 M10
N236 X11
N237 G91 Y1
N238 G90 X9.5
N239 X-22.5 M10
N240 X-25
N241 G91 Y1
N242 R102=R102+1
N243 @100 K-233
N244 G90 X-23
N245 X9 M10
N246 X11
N247 R102=1

R101=R101+1
N248 @100 K-202
N249 R101=1






(Für die abschließende Schicht werden nur die inneren Reihen gedruckt)(Quader1)

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

(Für die abschließende Schicht werden nur die inneren Reihen gedruckt)(Quader2)

N500 G90 X-25 Y0
N501 Y2
N502
N503 G90 X-23
N504 X9
N505 X11
N506 G91 Y1
N507 G90 X9.5
N508 X-22.5 M10
N509 X-25
N510 G91 Y1
N511 G90 X-23
N512 X9 M10
N513 X11
N514 G91 Y1
N515 G90 X9.5
N516 X-22.5 M10
N517 X-25

N900 X0 Y25 Z30 F300
N901 M30