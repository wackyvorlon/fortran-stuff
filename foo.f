	program foo
		implicit none
		! implicit none has to do with implicit typing
		! turns it off
		real, dimension(100):: a,b,c
		integer :: i, ios
		open(unit=10, file="bork", iostat=ios, status="new")
		if ( ios /= 0 ) stop "Error opening bork"
		
		
		! Initialize everything to zero
		a=0
		b=0
		c=0
		
		! Initialize array with vals 1 to 100
		a = (/ (i, i=1, 100)/)
		
		! take square roots
		b=sqrt(a)
		
		c=b*a
		
		write (10,*) c
		!close(unit=10, iostat=ios, status="delete")
		!if ( ios /= 0 ) stop "Error closing file unit iounit"
		close(10)
		
	

	end program foo
