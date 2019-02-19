program charge
  implicit none
  integer:: n,Np,me,k,r
  integer, dimension(0:9) :: i1, in
  print *, 'Donnez les valeurs de dans l ordre n,Np: '
  read *,n,Np
  print*,n,Np
  if (modulo(n,Np)==0) then
     k=n/Np
     do me=0,Np-1
        i1(me)=me*k+1
        in(me)=(me+1)*k
        write(*,*) I1(ME),in(me)
     end do
  else
     k=n/Np
     r=modulo(n,Np)
     do me=0, Np-1
        if(me < r)then
          i1(me)=me*(k+1)+1
          in(me)=(me+1)*(k+1)
        else
          i1(me)=1+r+me*k
          in(me)=i1(me)+k-1
        endif
       print*, i1(me),in(me), in(me)-i1(me)+1
     enddo
   !  do me=0,Np-1
   !     i1(me)=me*k+1
   !     iN(me)=me*(k+1)
! WRITE(*,*) '1', I1(ME),in(me)
!     end do
!     r=modulo(n,Np)
!     do me=0,Np-1
!        i1(me)=i1(me)+r*me
!        iN(me)=iN(me)+r*me
! WRITE(*,*) '2', I1(ME),in(me)
!     end do
 end if

end program

!program charge
 ! implicit none
  !integer:: n,Np,me,id,iN
!  print *, 'Donnez les valeurs de dans l ordre n,Np,id,iN : '
 ! read *,n,Np,id,iN
  !k=n/Np
!  do me=0,Np-1
 !    call charge()
  !end do
!end program
