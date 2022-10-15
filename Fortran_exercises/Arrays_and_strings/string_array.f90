program string_array
    implicit none
    
    character(len=10), dimension(2) :: keys, vals

    keys = [character(len=10) :: "user", "dbname"]
    vals = [character(len=10) :: "ben", "motivation"]

    call show(keys, vals)
    call show_notrim(keys,vals)

    contains

    subroutine show(akeys, avals)
        character(len=*), intent(in) :: akeys(:), avals(:)
        integer                      :: i

        do i = 1, size(akeys)
            print *, trim(akeys(i)), ": ", trim(avals(i))
        end do

    end subroutine show

    subroutine show_notrim(akeys, avals)
        character(len=*), intent(in) :: akeys(:), avals(:)
        integer                      :: i

        do i = 1, size(akeys)
            print *, akeys(i), ": ", avals(i)
        end do

    end subroutine show_notrim

end program string_array