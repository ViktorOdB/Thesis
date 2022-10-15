program allocatable
    implicit none
    
    integer, allocatable :: array1(:)
    integer, allocatable :: array2(:,:)

    allocate(array1(10))
    allocate(array2(10,10))

    print *, 'a', array1
    print *, 'b', array2

    deallocate(array1)
    deallocate(array2)

    print *, 'c', array1
    print *, 'd', array2

end program allocatable