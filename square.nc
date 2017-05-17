N11 R21=5000 	(Nozzle-on time in micros)
N12 R10=300		(Platform Temp)
N13 R11=625		(Nozzle1 Temp)



N30 R100=1 					(Actual Slice No)
N31 R101=20 				(Z Slices)
N32 R103=10					(Side Length)
N33 R104=0.65				(Slice Thickness)
N34 R105=0.95				(Line Thickness)
N35 R106=1					(Y Actual Line No)
N36 R107=5					(Y Lines)
N41 R40=576 				(Feedrate mm/min)
N42 R20=50					(Period in milis)


N43 R108=R103/2


N100 G90 G01 X5 Y5 Z1 F1152

N110 @136 R100 R101 K600

N115 @136 R106 R107 K160 
N119 G91 X-2 
N120 G91 X-10 M10
N130 Y-0.95
N140 X12
N150 R106=R106+1
N155 @100 K-115

N160 Z0.65
N170 R100=R100+1
N175 R106=1
N176 Y4.75
N180 @100 K-110

N600 G90
N610 M30