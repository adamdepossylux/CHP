Program premier

	 !$ use OMP_LIB
    Implicit none

    real :: a,b
    logical :: para
    Integer :: rang
    a=92.48
    para=.False.

    !$OMP Parallel Private(rang,para)
    !$ rang=OMP_GET_THREAD_NUM()
    !$ para=OMP_IN_PARALLEL()

    print*, "a vaut", a, "rang = ", rang, " para = ", para
    ! Export OMP_GET_THREADS=6
    !$OMP END PARALLEL
end program premier
