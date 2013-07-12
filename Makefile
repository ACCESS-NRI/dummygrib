FCFLAGS=-O3 -g

ifeq ($(FC),ifort)
FCFLAGS+=-traceback -warn all -warn errors
endif

all:libdummygrib.a

libdummygrib.a: libdummygrib.a(decode.o)

%.o:%.f90
	$(FC) $(FCFLAGS) -c -o $@ $<
