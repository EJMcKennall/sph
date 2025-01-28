module setup
 implicit none
 integer, parameter :: dp = 16
 !double precision :: pi = 4.d0*atan(1.d0)
 real(kind=dp), parameter :: pi = 4._dp*atan(1.)
 
 public :: pi
 public :: do_setup

 private

contains

subroutine do_setup(n,x,v,m,h)
 integer, intent(out) :: n
 real, intent(out), allocatable :: x(:),v(:),m(:),h(:)
 real :: dx, xmin, xmax, rhozero
 integer :: i

 n = 100 
 xmin = 0.
 xmax = 1.
 rhozero = 1.
 allocate(x(n), v(n),m(n),h(n))
 dx = (xmax-xmin)/n

 do i = 1, n
  x(i) = xmin + (i-0.5)*dx
  v(i) = 0.001*sin(2.*pi*x(i))
  h(i) = 1.*dx
  m(i) = rhozero*(xmax-xmin)/n
  enddo

end subroutine do_setup

end module setup
