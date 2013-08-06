if File.exist?("file.txt") then
	file=File.open("file.txt","r")
	file.each do |nama|
		puts nama
	end
	file.close

	# dengan IO#foreach
	IO.foreach("file.txt") {|nama| puts nama}
else
	puts "File tidak ada!"
end