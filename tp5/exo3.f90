program exo3
if (Me==0) then
  i1=(/1.do,2.do,3.do,4.do)
do he=1,Np-1
  call MPI_SEND(i1,4,MPI_REAL8,he,tag,MPI_COMM_WORLD,statinfo)
end do
else
call MPI_RECV(j1,4,MPI_REAL8,0,tag,MPI_COMM_WORLD,status,statinfo)
print*,'Me',Me,'j1 = ',j1
endif
end programv
