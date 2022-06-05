program type_example

    !> 4 bytes integer and 8 bytes real number
    use, intrinsic :: iso_fortran_env, only : int32, real64
    !> Disable implicit type assumption
    implicit none

    !> Delare variables
    integer(int32) :: i, j
    real(real64) :: a, b
    complex(real64) :: c

    i = 1
    j = i + 2
    print "('i = ', I0, ', j = ', I0)", i, j

    a = 2.5
    b = 3*a
    print "('a = ', F0.2, ', b = ', F0.2)", a, b

    c = (1.0, 2.0)
    print "('c = ', F0.2, ' + ', F0.2, 'i')", c

end program type_example