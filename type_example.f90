program type_example

    !> 4 bytes integer and 8 bytes real number
    use, intrinsic :: iso_fortran_env, only : int32, real64
    !> Disable implicit type assumption
    implicit none

    !> Declare variables
    integer(int32) :: i, j
    real(real64) :: a, b
    complex(real64) :: c

    i = 1
    j = i + 2
    print "('i = ', i0, ', j = ', i0)", i, j

    a = 2.5
    b = 3*a
    print "('a = ', f0.2, ', b = ', f0.2)", a, b

    c = (1.0, 2.0)
    print "('c = ', f0.2, ' + ', f0.2, 'i')", c

end program type_example