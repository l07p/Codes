! solver.f90
MODULE solver_module
    IMPLICIT NONE
CONTAINS

    SUBROUTINE solve_system(a, b, n)
        DOUBLE PRECISION, DIMENSION(n, n), INTENT(IN) :: a
        DOUBLE PRECISION, DIMENSION(n), INTENT(INOUT) :: b
        INTEGER, INTENT(IN) :: n
        
        INTEGER :: ipiv(n), info
        ! Call LAPACK or any other computation here
        CALL dgesv(n, 1, a, n, ipiv, b, n, info)
    END SUBROUTINE solve_system

END MODULE solver_module
