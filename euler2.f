	program euler2
		integer, dimension(200):: a, b
		integer i
		a = 0
		b = 0
		a(1) = 1
		a(2) = 2
		do i=3, 200
			a(i)=a(i-1)+a(i-2)
			!write(*,*) a(i), i
			if ( a(i) >= 4000000 ) exit
		end do
		
		where (mod(a, 2) == 0) b=a
		
		write (*,*) sum(a), sum(b)
		
	end program euler2