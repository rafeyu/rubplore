=begin
	jika n = 3
	  *   *
		*
	  *   *
	jika n = 4
	  *  *
 	   **
 	   **
	  *  *
=end
print "n: "
n=gets.to_i

for i in 1..n do
	for j in 1..n do
		if i+j==n+1 || i==j
			print "*"
		else
			print " "			
		end
	end
	puts
end