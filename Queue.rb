class Queue
	MAX=5
	$q=[]
	@@head=-1
	@@tail=-1
	def is_full
		if @@tail==MAX
			return true
		else
			return false
		end
	end
	def is_empty
		if @@tail==-1
			return true
		else
			return false
		end
	end
	def in(data)
		# if @@tail==-1 && @@head==-1
			@@tail+=1
			@@head+=1
			$q[@@tail]=data
		# end
	end
	def out
		(0..@@tail).each do |i|
			$q[i]=$q[i+1]
		end
	end
	def cetak
		(0..@@tail).each do |i|
			puts "Data: #{$q[i]}"
		end
	end
end

antri=Queue.new
print "Menu:\n1. Masukkan\n2. Keluarkan\n3. Cetak\n0. Exit\n"
begin
	print "Pilih : "
	pil=gets.chomp
	# pil=gets.to_i
	case pil
		when '1' then if antri.is_full!=true then
					print "Input data: "
					data=gets.to_i
					antri.in(data)
				else
					puts "Queue sudah penuh!"
				end
		when '2' then if antri.is_empty!=true then
					antri.out
				else
					puts "Antri sudah kosong!"
				end
		when '3' then antri.cetak
		else puts " "			
	end
end while pil!='0'
puts "Exit!"