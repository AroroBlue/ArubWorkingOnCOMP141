#Makefile
all: try
try: try.o
	gcc -o $@ $+
try.o : try.s
	as -g -mfpu=vfpv2 -o $@ $<
clean:
	rm -vf try *.o
