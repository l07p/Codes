program MainProgram

    implicit none
    
    ! Define variables
    integer :: n, nrhs, lda, ldb, info
    integer, dimension(2) :: ipiv
    double precision, dimension(2,2) :: a   ! Coefficient matrix A
    double precision, dimension(2,1) :: b   ! Right-hand side vector B

    ! Initialize matrix A and vector B
    a = reshape([5.0d0, 3.0d0, &      ! A matrix
                 0.0d0, -4.0d0], [2,2])
    b = reshape([25.0d0, 3.0d0], [2,1])   ! B vector

    n = 2        ! Size of the matrix A
    nrhs = 1     ! Number of right-hand sides (columns of B)
    lda = 2      ! Leading dimension of matrix A
    ldb = 2      ! Leading dimension of matrix B

    ! Call LAPACK routine DGESV to solve Ax = B
    call dgesv(n, nrhs, a, lda, ipiv, b, ldb, info)

    ! Check if the solution was successful
    if (info == 0) then
        print *, 'Solution found:' , b
        !print *, 'x1 = ', b(1,1)
        !print *, 'x2 = ', b(2,1)
    else
        print *, 'LAPACK DGESV error: ', info
    end if
    
    ! Wait for user input to keep the window open
    print *, 'Press Enter to close...'
    read(*,*)  ! Wait for Enter key
end program MainProgram