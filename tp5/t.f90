program test
  implicit none

  if(Me==0) then
    i1=1000
    tag=100
    call MPI_SEND(i1,1,MPI_INTEGER,Np-1,tag,MPI_COMM_WORLD,Statinfo)
    if(Me==Np-1) then
      call MPI_RECV(j1,1,MPI_INTEGER,0,tag,MPI_COMM_WORLD,Status,Statinfo)
    end if
end program
