program sph
 use setup, only:do_setup, pi
 use output, only:write_output
 use dens, only:get_dens
 implicit none
 integer :: n
 real, allocatable :: x(:), v(:), h(:), m(:), rho(:)

 call do_setup(n,x,v,m,h)
 
 allocate(rho(n))
 call get_dens(n,x,h,m,rho)
 call write_output(n,x,v,h,rho,m)
 print*,'sph done'

end program sph
