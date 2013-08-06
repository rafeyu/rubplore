print "Menu:\n1. Write file\n2. Read File\n3. Exit"
begin
	print "\n\nPilih :"
	menu=gets.chomp
	if menu=='1' then
		w_file=File.new("file/file1.txt",'w')	#=> tulis file
		print "Input something: "
		input=gets
		w_file.puts input
		puts "File has been created!"
		w_file.close
	elsif menu=='2'
		if File.exist?("file/file1.txt") then	#=> cek file kalau ada
			r_file=File.open("file/file1.txt")	#=> open file
			r_file.each do |output|
				puts output
			end
		else
			puts "File tidak ada!"
		end
	elsif menu=='3'
		puts "Berhasil keluar!"
	else
		puts "Tidak ada pilihan menu #{menu}"
	end
end while menu!='3'