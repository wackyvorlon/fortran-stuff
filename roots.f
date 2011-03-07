	program roots
		implicit none
		real a,b,c
		real discriminant, root1, root2
		
		print *, 'Input A, B, C'
		read *, a, b, c
		
		discriminant = b **2 - 4.0 * a * c
		
		if (discriminant<0.0) then
			print *, 'No real roots'
		else
			! Calculate roots
			root1 = (-b+sqrt(discriminant))/(2.0*a)
			root2 = (-b-sqrt(discriminant))/(2.0*a)
			print *, 'Roots are ', root1, root2
		end if
		
	end program roots