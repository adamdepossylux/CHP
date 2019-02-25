program environnement
  implicit none
  include 'mpif.h'
  integer :: Np,Me,Statinfo
  call MPI_INIT(Statinfo)
  call MPI_COMM_SIZE(MPI_COMM_WORLD,Np,Statinfo)
  call MPI_COMM_RANK(MPI_COMM_WORLD,Me,Statinfo)
  print*,"Je suis proc",Me,"parmi",Np
  call MPI_FINALIZE(Statinfo)
end program
