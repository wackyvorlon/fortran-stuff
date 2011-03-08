	program implied

		implicit none
		integer :: a
		
		write(*,*) "Implied do test: ", (/(a,a=1,100)/)
		

	end program implied
	