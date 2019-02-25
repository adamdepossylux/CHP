program point_a_point
  implicit none
  include 'mpif.h'
  integer,dimension(MPI_STATUS_SIZE) :: status
  integer, parameter :: tag=100
  integer :: Me, statinfo, i1, j1
  call MPI_INIT(statinfo)
  j1=0
  call MPI_COMM_RANK(MPI_COMM_WORLD,Me,statinfo)
  if(Me==2) then
    i1=222
    call MPI_SEND(i1,1,MPI_INTEGER,5,tag,MPI_COMM_WORLD,statinfo)
  endif
  if(Me==5) then
    call MPI_RECV(j1,1,MPI_INTEGER,2,tag,MPI_COMM_WORLD,Status,statinfo)
    print*,'Moi proc',Me,'a dans j1',j1
  endif
  call MPI_FINALIZE(statinfo)
end program
