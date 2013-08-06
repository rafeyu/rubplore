case ARGV[0]
	when "-v" then
		if ARGV[1]
			puts "ini argv1"
		else
			puts "Version"
		end
	else
		puts "failed command"
end