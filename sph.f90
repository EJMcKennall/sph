program sph
 use setup, only:do_setup, pi
 use output, only:write_output
 implicit none
 integer :: n
 real, allocatable :: x(:) , v(:)

 call do_setup(n,x)
 
 call write_output(n,x,v)
 print*,'sph done'

end program sph
