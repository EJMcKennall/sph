module dens
 implicit none

 public :: get_dens
 private

contains

subroutine get_dens(n,x,h,m,rho)
 integer, intent(in) :: n
 real, intent(in) :: x(n), h(n), m(n)
 real, intent(out) :: rho(n)

 rho = 2

end subroutine get_dens

end module dens
