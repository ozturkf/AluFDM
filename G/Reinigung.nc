N001 R20=200 (Periodendauer in ms)
N002 R21=3400 (Ventilöffnung in us)
N003 R101=1 (Laufvariable)
N004 R102=1


N110 G01 X-25 Y-13 Z8 F330 (Geradeninterpolation zu Koordinate mit Geschwindigkeit 330mm/min)
N111 X-20		     (Geradeninterpolation nach x-20-> jetzt auf Koordinate x-20/Y-13/Z0.9)
N112 M10 X10		     (Druckimpuls mit M10 und Fahrt nach X-10/Y-13/Z0.9)(Testlinie)



N900 X0 Y25 Z30 F300
N901 M30