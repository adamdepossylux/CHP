program for
  implicit none
INTEGER FUNCTION OMP_GET_THREAD_NUM()
!$OMP PARALLEL
      write(*,*)'Thread rank: ', OMP_GET_THREAD_NUM()
!$OMP END PARALLEL
end program for
