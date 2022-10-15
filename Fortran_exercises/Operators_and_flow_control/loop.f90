program loop
    implicit none
    
    integer :: i

    integer :: j, k

    real, parameter :: pi = 3.14159265
    integer, parameter :: n = 10
    real :: result_sin(n)
    integer :: l

    do i = 1,10
        print *, i
    end do

    do i = 1, 10, 2
        print *, i  ! Print odd numbers
    end do

    i = 1
    do while (i < 11)
        print *, i
        i = i + 1
    end do
    ! Here i = 11

    do i = 1, 100
        if (i > 10) then
          exit  ! Stop printing numbers
        end if
        print *, i
    end do
    ! Here i = 11

    do i = 1, 10
        if (mod(i, 2) == 0) then
            cycle  ! Don't print even numbers
        end if
        print *, i
    end do

    outer_loop: do j = 1,10
        inner_loop: do k = 1,10
            if ((k + j) > 10) then ! Print only pairs of j and k that add up to 10
                cycle outer_loop ! Go to the next iteration of the outer loop
            end if
            print *, 'J=', J, ' K=', k, ' Sum=', k + j
        end do inner_loop
    end do outer_loop

    do concurrent (l = 1:n)  ! Careful, the syntax is slightly different
        result_sin(l) = sin(l * pi/4.)
    end do

    print *, result_sin

end program loop