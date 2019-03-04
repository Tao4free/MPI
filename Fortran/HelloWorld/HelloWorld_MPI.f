! test MPI using simple program hello world
! reference:
!           https://people.sc.fsu.edu/~jburkardt/f77_src/hello_mpi/hello_mpi.html
!  Licensing:
!
!    This code is distributed under the GNU LGPL license. 

      Program hellowworld

      implicit real(a-h,o-z), integer(i-n)

      ! Define MPI symbols
      include 'mpif.h'
      integer error, p, id

      ! Initialzie MPI
      call MPI_INIT(ierr)

      ! Get the number of processes
      call MPI_COMM_SIZE(MOI_COMM_WORLD, p, ierr)

      ! Get the individual process ID
      call MPI_COMM_RANK(MPI_COMM_WORLD, id, ierr)

      ! Print some messages
      write(*,'(a,i3,a)') '  Process ', id, ' says "Hello world!"'

      ! Terminate MPI
      call MPI_FINALIZE(ierr)

      stop

      end
