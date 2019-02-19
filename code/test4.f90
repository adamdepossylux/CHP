program ordonner
  !$ use OMP_LIB
  Integer, parameter :: n=9
  integer :: i,rang
  !$OMP PARALLEL DEFAULT(PRIVATE)
  !$ rang=OMP_GET_THREAD_NUM()
  !$OMP DO SCHEDULE(RUNTIME) ORDERED
    do i=1,n
      !$OMP ORDERED
      print*,'rang=',rang,'ietration',i
      !$OMP END ORDERED
    end do
    !$OMP END DO NOWAIT
    !$OMP END PARALLEL
  end program ordonner
