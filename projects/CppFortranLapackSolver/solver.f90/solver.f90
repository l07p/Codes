subroutine solve_system(A, b, n)
    use mkl_lapack
    implicit none
    integer, intent(in) :: n
    double precision, intent(inout) :: A(n,n), b(n)
    integer :: ipiv(n), info

    ! Call LAPACK routine DGESV to solve Ax = b
    call dgesv(n, 1, A, n, ipiv, b, n, info)

    if (info /= 0) then
        print *, "LAPACK solver error:", info
    endif
end subroutine solve_system
