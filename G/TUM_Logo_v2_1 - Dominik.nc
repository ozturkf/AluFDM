﻿N001 R20=200					(Periodendauer im ms)
N002 R21=9000					(Ventilöffnung in us bestimmt die Volumenmenge, die ausgestoßen wird)
N003 R11=700					(Druckkopftemperatur Schmelztiegel initialisieren)
N004 R10=450					(Plattformtemperautr initialisieren)
N005 R101=1						(Laufvariable)
N006 R102=1						(Laufvariable)

N101 M11						(Temperaturcheck durchführen)
N102 M0 						(Reset, immer nach M11)
N103 G01 X-25 Y-22 Z0 F330		()
N104 Z0.9
N105 X-22
N106 M10 X-10

N110 @136 R102 K3 K900
N111 G90 X-22 Y-22
N112 G91 Y5

N120 @136 R101 K4 K160
N121 G91 X2 F330
N122 M10 X3.2
N123 X3.4
N124 M10 X3.2
N125 X3.4
N126 M10 X9.8
N127 X3.4
N128 M10 X3.2
N129 X3.4
N130 Y1
N131 G90 X-22 F1000

N150 R101=R101+1
N151 @100 K-120

N160 R101=1
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
