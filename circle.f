	program circle
	real r, area, sumo
	integer i
	
	real, dimension(7):: a, b, c
	
	real pi
	a = (/ 2, 3, 5, 7, 11, 13, 17 /)
	pi = 4.0 * atan(1.0)
	b=sqrt(a)
	! write (*,*) 'Give radius r:'
	! read  (*,*) r
	write (*,*) a
	write (*,*) b
	where (a >= 5.0) a = 10
	c=a+b
	write (*,*) a
	write (*,*) c
	sumo = sum(c)
	write (*,*) sumo
	do i = 1, 10
		area = pi*i*i
		write (*,*) 'Area = ', area
		
	end do
	stop
	end
