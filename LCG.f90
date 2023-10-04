program LCG
  implicit none

  integer, parameter :: n = 10 ! Number of random numbers to generate
  integer, parameter :: a = 39
  integer, parameter :: b = 87
  integer, parameter :: m = 2000
  integer :: xn, i

  ! Initial seed value
  xn = 42

  do i = 1, n
    xn = mod(a * xn + b, m)
    print *, "Random Number ", i, ": ", xn
  end do

end program LCG
