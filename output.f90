module output
 implicit none
 integer :: ifile = 0
contains

subroutine write_output(n,x,v,h,rho,m)
 integer, intent(in) :: n
 real, intent(in) :: x(n),v(n),h(n),rho(n),m(n)
 character(len=20) :: filename
 integer :: i,iu

 write(filename,"(a,i5.5)") 'output_', ifile 
 print "(a)",' writing ' //trim(filename)
 
 open(newunit=iu,file=filename,status='replace',action='write',form='formatted')
 write(iu,*) '# x,v,h,rho,m'
 write(iu,*) n
 do i=1,n
    write(iu,*) x(i),v(i),h(i),rho(i),m(i)
 enddo 
 close(iu)
 

 ifile = ifile + 1


end subroutine write_output

end module output
