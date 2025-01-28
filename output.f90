module output
 implicit none
 integer :: ifile = 0
contains

subroutine write_output(n,x,v)
 integer, intent(in) :: n
 real, intent(in) :: x(n),v(n)
 character(len=20) :: filename

 write(filename,"(a,i5.5)") 'output_', ifile 
 print*, filename
 print*, ' ifile = ' ,ifile
  
 ifile = ifile + 1


end subroutine write_output

end module output
