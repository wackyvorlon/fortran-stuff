	program foo
		implicit none
		! implicit none has to do with implicit typing
		! turns it off
		real, dimension(100):: a,b,c,d
		integer :: i, ios, istat
		open(unit=10, file="bork", iostat=ios, status="new")
		if ( ios /= 0 ) stop "Error opening bork"
		
		open(unit=11, file="bork2", iostat=ios, status="old")
		if ( ios /= 0 ) stop "Error opening bork2"
		
		! This effort to read data is not working so well.
		! Results appear scrambled.
		read(unit=11, fmt="(100(F3.7,8X))", iostat=istat) d
		if ( istat /= 0 ) stop "Read error in file unit 11"
		
		! Initialize everything to zero
		a=0
		b=0
		c=0
		
		! Initialize array with vals 1 to 100
		a = (/ (i, i=1, 100)/)
		
		! take square roots
		b=sqrt(a)
		
		c=b*a
		
		write (*,*) "Writing data to file..."
		write(*,*) d
		write (10,*) c
		!close(unit=10, iostat=ios, status="delete")
		!if ( ios /= 0 ) stop "Error closing file unit iounit"
		close(10)
		close(11)
		
	

	end program foo
