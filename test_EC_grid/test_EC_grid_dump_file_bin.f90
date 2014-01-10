program test

use EC_grid

implicit none

character(len=250) :: file

if (command_argument_count() /= 1) then
   write(0,'(a)') 'Usage: test_EC_grid_dump_file_bin [ijxyz.bin file]'
   stop
endif

call get_command_argument(1,file)

call EC_grid_dump_file_bin(file)

end program