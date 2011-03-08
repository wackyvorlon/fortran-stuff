	program vector
		implicit none
		real, dimension(3):: a,b,c
		real :: d
		
		a=0
		b=0
		c=0
		!Say we've got three vectors. Initialized to zero.
		write (*,*) "Vector a values:"
		read (*,*) a
		write(*,*) "Vector b values:"
		read(*,*) b
		
		!Find dot product
		d = dot_product(a,b)
		
		!Multiplies each element in a with it's corresponding element in b
		!then sums the result.
		
		write(*,*) "Dot product: ", d
		

	end program vector
	