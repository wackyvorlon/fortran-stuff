	program printing

		implicit none
		integer, dimension(100) :: a
		integer :: b
		
		! Initialize
		a=(/(b,b=1,100)/)
		
		! The goal is to print this out formatted nicely.
		write(*,*) "Values: "
		write(*,*) a
		

	end program printing
	