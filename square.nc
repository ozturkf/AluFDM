N11 R21=5000 	(Nozzle-on time in micros)
N12 R10=300		(Platform Temp)
N13 R11=625		(Nozzle1 Temp)



N30 R100=0 					(Actual Height)
N31 R101=20 				(Target Height)
N32 R103=10					(Side Length)
N33 R104=0.65				(Slice Thickness)

N41 R40=576 				(Feedrate mm/min)
N42 R20=(R40/576)*100		(Period in milis)

N100 G90 G01 X(R103/2) Y(R103/2) FR40
N110 @136 R100 R101 K600 
N120 G91 Y(-R103) M10
N130 X(-R103) M10
N140 Y(R103) M10
N150 X(R103) M10
N160 ZR104
N170 R100=R100+R104
N220 @100 K-200

N600 G90
N610 M30