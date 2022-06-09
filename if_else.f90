program if_else

    implicit none
    integer :: i

    i = 4

    if (i < 0) then
        print "('i is less than 0: i = ', i0)", i
    else if (i < 10) then
        print "('i is greater than or equal to 0, or less than 10: i = ', i0)", i
    else
        print "('i is greater than or equal to 10: i = ', i0)", i
    end if

end program if_else