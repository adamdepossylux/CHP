program test
  !$ use OMP_Lib
  implicit none
  integer :: rang, compteur
  compteur = 920
  !$OMP PARALLEL PRIVATE(rang)
  !$ rang=OMP_GET_THREAD_NUM()
  !$OMP ATOMIC
    compteur=compteur + 1
  print*,"rang",rang,"compteur",compteur
  !$OMP END PARALLEL
end program test
