program aplusb
    implicit none
    integer :: a, b
    
    read(*, *) a, b
    write(*, '(I0)') a + b
end program aplusb
