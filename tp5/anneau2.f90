program point_a_point
  implicit none
  include 'mpif.h'
  integer,dimension(MPI_STATUS_SIZE) :: status
  integer, parameter :: tag=100
  integer :: Me, statinfo, i1,i2, j1,Np,num_proc_prec,num_proc_suiv
  call MPI_INIT(statinfo)
  j1=0
  call MPI_COMM_RANK(MPI_COMM_WORLD,Me,statinfo)
  call MPI_COMM_SIZE(MPI_COMM_WORLD,Np,statinfo)
  num_proc_prec=mod(me-1+Np,Np)
  num_proc_suiv=mod(me+1,Np)
  i1=1000
  if(Me==0) then
    call MPI_SEND(i1,1,MPI_INTEGER,1,tag,MPI_COMM_WORLD,statinfo)
    call MPI_RECV(i2,1,MPI_INTEGER,5,tag,MPI_COMM_WORLD,Status,statinfo)
    i1=i2+1
    print*,'Moi proc',Me,'vaut i1',i1
  else
    !call MPI_RECV(i1,1,MPI_INTEGER,Me-1,tag,MPI_COMM_WORLD,Status,statinfo)
    call MPI_RECV(i2,1,MPI_INTEGER,num_proc_prec,tag,MPI_COMM_WORLD,Status,statinfo)
    i1=i2+1
    !call MPI_SEND(i1,1,MPI_INTEGER,Me+1,tag,MPI_COMM_WORLD,statinfo)
    call MPI_SEND(i1,1,MPI_INTEGER,num_proc_suiv,tag,MPI_COMM_WORLD,statinfo)
    print*,'Moi proc',Me,'vaut j1',i1,'envoie depuis',Me-1, 'dans ', Me+1
  endif
  call MPI_FINALIZE(statinfo)
end program
