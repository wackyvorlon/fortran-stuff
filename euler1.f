	program euler1
		integer, dimension(999):: a, b
		integer i, c
		
		b=0
		a = (/ (i, i=1, 999) /)
		! write (*,*) a
		where ( mod(a,3) == 0 .or. mod(a,5) == 0) b=a
		c = sum(b)
		write (*,*) 'Results ', c
	end program euler1