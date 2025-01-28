program sph
 use setup, only:do_setup, pi
 implicit none
 integer :: n
 real, allocatable :: x(:)
 real, allocatable :: y(:)

 call do_setup(n,x)
 print*,n,pi
 print*,'x = ',x
 y = x
 print*,y

end program sph
