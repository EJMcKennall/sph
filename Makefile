FC=gfortran
FFLAGS=-O3 -Wall -Wextra # optimisation by 3 times
SRC=setup.f90 sph.f90
OBJ=${SRC:.f90=.o}

%.o: %.f90
	$(FC) $(FFLAGS) -o $@ -c $<

sph1: $(OBJ)
	$(FC) $(FFLAGS) -o sph $(OBJ)

clean:
	rm -f .o .mod sph
