	program euler002
    	implicit none
    
    	integer :: i = 0
    	integer :: f = 0
    	integer :: s = 0
    
		do
			i = i + 1
			f = fib(i)
			
			if (f >= 4e6) then
				exit
			elseif (mod(f,2)==0) then
				s = s + f
			end if
		end do
			
		print *, 'Fibs: ', s
		
		contains
			recursive function fib(n) result (r)
				integer n, r
				
				if (n < 1) then
					r = 0
				else
					r = fib(n-1) + fib(n-2)
				end if
				return
			end function fib
	
	end program