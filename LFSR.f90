program LFSR
  implicit none

  integer, parameter :: num_bits = 5
  integer, parameter :: seed = 17 ! Initial seed value (5 bits)
  integer, parameter :: taps(num_bits) = [3, 2, 1, 0, 0] ! Taps for XOR logic

  integer :: lfsr_register
  integer :: random_bit
  integer :: i, j

  ! Initialize the LFSR register
  lfsr_register = seed

  ! Generate and print random numbers until it cycles back to the seed
  do i = 1, 10
    random_bit = 0
    do j = 1, num_bits
      random_bit = ieor(random_bit, iand(ishft(lfsr_register, -taps(j)), 1))
    end do
    lfsr_register = ishft(lfsr_register, 1)
    lfsr_register = ieor(lfsr_register, random_bit)
    print *, "Random Number ", i, ": ", lfsr_register
    if (lfsr_register == seed) exit
  end do

end program LFSR
