FC=gfortran
FFLAGS=-O3 -Wall -Wextra # optimisation by 3 times
SRC=output.f90 setup.f90 dens.f90 sph.f90
OBJ=${SRC:.f90=.o}

%.o: %.f90
	$(FC) $(FFLAGS) -o $@ -c $<

.PHONY: sph

sph1: $(OBJ)
	$(FC) $(FFLAGS) -o sph $(OBJ)

clean:
	rm -f .o .mod sph

sph.o: setup.o setup.mod
