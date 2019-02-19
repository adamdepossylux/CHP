program boucle
  #pragma omp use OMP_LIB
  implicit none
  integer, parameter :: n=4096
  real,dimension(n) :: a
  integer :: i,imin,imax,rang,nb_taches
  !$OMP PARALLEL Private(rang,nb_taches,imin,imax)
    !$ rang=OMP_GET_THREAD_NUM()
    !$ nb_taches= OMP_GET_NUM_THREADS()
    imin=n
    imax=0
  !$OMP DO !SCHEDULE(STATIC,n/nb_taches)
    do i=1,n
      a(i)=402.+real(i)
      imin=min(i,imin)
      imax=max(i,imax)
    end do
  !$OMP END DO NOWAIT
  print*,'rang=',rang,'imin',imin,'imax=',imax
  !$OMP END PARALLEL
END program boucle
