require "#{File.dirname(__FILE__)}/Stack.rb"

tumpukan=Stack.new
print "Menu\n1. Push\n2. Pop\n3. Cetak\n4. Clear\n5. Pindahkan data\n6. Exit\n"
begin
	print "\nPilih :"
	pilih=gets.chomp
	case pilih
		when '1' then
			if tumpukan.is_full!=true then
				print "\nInput data : "
				data=gets.to_i
				tumpukan.push(data)
			else
				puts "Stack penuh"
			end
		when '2' then
			if tumpukan.is_empty!=true then
				tumpukan.pop(data)
			else 
				puts "Stack sudah kosong!"
			end
		when '3' then
			tumpukan.cetak
		when '4' then
			tumpukan.clear
		when '6' then
			puts " "
		else print "Error command!"
	end
end while pilih!='6'
puts "Exit Success!"