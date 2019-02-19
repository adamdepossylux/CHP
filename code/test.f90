program test
  !$ use OMP_LIB
  Implicit none
  real :: a
  a=92200
  !$OMP PARALLEL DEFAULT(none) FIRSTPRIVATE(a)
  !DEFAULT(Private) initialise à 0
  !NONE oblige à donner le type des variables
    a=a+290
    print*,'a vaut',a
  !$OMP END PARALLEL
END program test
