module my_module

    use, intrinsic :: iso_fortran_env, only : int32
    implicit none

contains

    !> Funciton in a module
    integer(int32) function sum_array(a)

        integer(int32), intent(in) :: a(:)
        integer(int32) :: i, n

        n = size(a)
        sum_array = 0
        do i = 1,n
            sum_array = sum_array + a(i)
        end do

    end function

end module my_module

program function_example

    use, intrinsic :: iso_fortran_env, only : int32
    use my_module
    implicit none

    integer(int32), parameter :: n = 10
    integer(int32) :: i, a(n)

    do i = 1, n
        a(i) = i
    end do

    print "('sum_a() = ', I0)", sum_a()
    print "('sum_array(a) = ', I0)", sum_array(a)

contains

    !> Function contained in a program can access variables used in the program.
    integer(int32) function sum_a()
        sum_a = 0
        do i = 1, n
            sum_a = sum_a + a(i)
        end do
    end function

end program function_example