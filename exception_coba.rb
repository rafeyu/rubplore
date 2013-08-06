=begin
	coba Exception
=end

#!/usr/bin/env ruby

begin
	x=1/0
rescue Exception => e
	puts e.class	#=> ZeroDivisionError
	puts e 			#=> divided by 0
end