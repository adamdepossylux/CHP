program anneau
  !$ use OMP_Lib
  implicit none
  integer :: rang, nb_taches, synch
  real :: t1,t2,t
  !t1=CETIME()
  synch=0
  !$OMP PARALLEL PRIVATE(rang,nb_taches)
  rang=OMP_GET_THREAD_NUM()
  nb_taches=OMP_GET_NUM_THREADS()
  if(rang==0) then
    do
      print*, "0 rang", rang, synch
      !$OMP FLUSH(synch)
      if(synch==nb_taches-1) exit
    end do
  else
    do
      print*,' autre rang', rang, synch
      !$OMP FLUSH(synch)
      if(synch==rang-1) exit
    end do
  end if
  print*,'rang',rang,synch
  synch=rang
  !$OMP FLUSH(synch)
  !$OMP END PARALLEL
  !t2=ETIME()
  !t=t1-t2
  print*,"temps d'execution est : ",t
end program anneau
