N001 R20=200 (Periodendauer in ms)
N002 R21=7000 (Ventil�ffnung in us)
N003 R22=1500
N004 R101=1 (Laufvariable)
N005 R102=1
N006 R11=750
N007 R10=400
N008 M11
N009 M0


N110 G01 X-24 Y-13 F1000 (Geradeninterpolation zu Koordinate mit Geschwindigkeit 330mm/min)
N111 X-20 F330	     (Geradeninterpolation nach x-20-> jetzt auf Koordinate x-20/Y-13/Z0.9)
N112 M10 X0		     (Druckimpuls mit M10 und Fahrt nach X-10/Y-13/Z0.9)(Testlinie)
N113 @714
N114 R22=1200

N231 G90 X-24 Y10 F1000   (Startpunkt Quader 3) 
N232 Y12 F330
N233 @136 R102 K2 K244 (Drucken der Schicht Quader2)
N234 G90 X-23
N235 X9 M10
N236 X11
N237 G91 Y1
N238 G90 X9.5
N239 X-22.5 M10
N240 X-24
N241 G91 Y1
N242 R102=R102+1
N243 @100 K-233
N244 G90 X-23
N245 X9 M10
N246 X11
N247 R102=1

N302 @136 R101 K2 K450 (Schleife f�r 3maliges Fahren der Route)
N303 G91 Z0.8   (F�r jede Schicht um 0.88 absenken)

N304 G90 X-24 Y-10 F1000 (Startpunkt Quader1)
N305 Y-8 F330
N310 @136 R102 K2 K321 (Drucken der Schicht Quader 1)
N311 G90 X-23
N312 X9 M10
N313 X11
N314 G91 Y1
N315 G90 X9.5
N316 X-22.5 M10
N317 X-24
N318 G91 Y1
N319 R102=R102+1
N320 @100 K-310
N321 G90 X-23
N322 X9 M10
N323 X11
N324 R102=1

N331 G90 X-24 Y0 F1000   (Startpunkt Quader 2) 
N332 Y2 F330
N333 @136 R102 K2 K344 (Drucken der Schicht Quader2)
N334 G90 X-23
N335 X9 M10
N336 X11
N337 G91 Y1
N338 G90 X9.5
N339 X-22.5 M10
N340 X-24
N341 G91 Y1
N342 R102=R102+1
N343 @100 K-333
N344 G90 X-23
N345 X9 M10
N346 X11
N347 R102=1

N431 G90 X-24 Y10 F1000   (Startpunkt Quader 3) 
N432 Y12 F330
N433 @136 R102 K2 K444 (Drucken der Schicht Quader2)
N434 G90 X-23
N435 X9 M10
N436 X11
N437 G91 Y1
N438 G90 X9.5
N439 X-22.5 M10
N440 X-24
N441 G91 Y1
N442 R102=R102+1
N443 @100 K-433
N444 G90 X-23
N445 X9 M10
N446 X11
N447 R102=1

N448 R101=R101+1
N449 @100 K-302
N450 R101=1

N403 G91 Z0.8   (F�r jede Schicht um 0.88 absenken)

N404 G90 X-24 Y-10 F1000 (Startpunkt Quader1)
N405 Y-8 F330
N410 @136 R102 K2 K421 (Drucken der Schicht Quader 1)
N411 G90 X-23
N412 X9 M10
N413 X11
N414 G91 Y1
N415 G90 X9.5
N416 X-22.5 M10
N417 X-24
N418 G91 Y1
N419 R102=R102+1
N420 @100 K-410
N421 G90 X-23
N422 X9 M10
N423 X11
N424 R102=1
