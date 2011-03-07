	program foo
		implicit none
		! implicit none has to do with implicit typing
		! turns it off
		real, dimension(100):: a,b,c
		integer :: i
		! Initialize everything to zero
		a=0
		b=0
		c=0
		
		! Initialize array with vals 1 to 100
		a = (/ (i, i=1, 100)/)
		
		! take square roots
		b=sqrt(a)
		
		c=b*a
		
		write (*,*) c
	

	end program foo
