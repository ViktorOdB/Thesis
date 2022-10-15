program array_slice
    implicit none
    integer :: i
    integer :: array1(10) ! 1D integer array of 10 elements
    integer :: array2(10, 10) ! 2D integer array of 100 elements

    array1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] ! Array constructor
    print *, 'a', array1
    array1 = [(i, i =1, 10)] ! Implied do loop constructor
    print *, 'b', array1
    array1(:) = 0 ! Set all elements to zero
    print *, 'c', array1
    array1(1:5) = 1 ! Set first five elements to one
    print *, 'd', array1
    array1(6:) = 1 ! Set all elements after five to one
    print *, 'e', array1

    array1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    print *, 'f', array1(1:10:2)  ! Print out elements at odd indices
    print *, 'g', array2(:,1)  ! Print out the first column in a 2D array
    print *, 'h', array1(10:1:-1)  ! Print an array in reverse

end program array_slice