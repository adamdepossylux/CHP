program test2
  !$use OMP_LIB
  implicit none
  integer :: a,b
  a=92200
  !$OMP PARALLEL DEFAULT(none) FIRSTPRIVATE(a)
    a=a+290
    print*,'a vaut',a
  !$OMP END PARALLEL
  print*,'a=',a
  b=777
  print*,'b',b
  !$OMP PARALLEL SHARED(b)
    b=b+290
  !$OMP END PARALLEL
  print*,'b=',b
end program test2
