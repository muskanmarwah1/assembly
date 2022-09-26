PrintName: PrintName.o
	ld -o PrintName PrintName.o -lSystem -syslibroot `xcrun -sdk macosx --show-sdk-path` -e _start -arch arm64

PrintName.o: PrintName.s
	as -arch arm64 -o PrintName.o PrintName.s