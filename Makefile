FCFLAGS=-O3 -g

ifeq ($(FC),ifort)
    FCFLAGS+=-traceback -warn all -warn errors -warn nounused
else ifeq ($(FC),gfortran)
    FCFLAGS+=-Wall -Werror -Wno-unused
endif

all:libdummygrib.a
clean:
	$(RM) libdummygrib.a
	$(RM) *.o

libdummygrib.a: libdummygrib.a(decode.o)

%.o:%.f90
	$(FC) $(FCFLAGS) -c -o $@ $<
