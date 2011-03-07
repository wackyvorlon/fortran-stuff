	program foo
		integer, dimension(100):: a
		integer i
		
		a=(/ (i, i=1, 100) /)
		
		write (*,*) a
		
	end program