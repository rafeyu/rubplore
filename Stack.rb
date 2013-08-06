class Stack
	$stack=[]
	$stack_b=[]
	MAX=5
	@@top=-1
	@@top_b=-1
	public
	def push(a)
		@@top+=1
		$stack[@@top]=a
	end
	def pop(a)
		a=$stack[@@top]
		puts "Nilai yang dikeluarkan : #{a}"
		@@top-=1
	end
	def is_full
		if @@top==MAX-1 then
			return true
		else
			return false
		end
	end
	def is_empty
		if @@top==-1 then
			return true
		else
			return false
		end
	end
	def cetak
		puts "Stack A:"
		(@@top).downto(0) do |i|
			puts "Data: #{$stack[i]}"
		end
		puts "\nStack B:"
		if @@top_b!=-1 then
			(@@top_b).downto(0) do |i|
				puts "Data: #{$stack_b[i]}"
			end
		else
			puts "Kosong"
		end
	end
	def clear
		@@top=-1
		puts "Stack sudah bersih!"
	end
	def pindah_data
		
	end
end

# stack1=Stack.new
# print "Menu\n1. Push\n2. Pop\n3. Cetak\n4. Clear\n5. Exit\n"
# begin
	# print "\nPilih :"
	# pilih=gets.chomp
	# case pilih
		# when '1' then
			# if stack1.is_full!=true then
				# print "\nInput data : "
				# data=gets.to_i
				# stack1.push(data)
			# else
				# puts "Stack penuh"
			# end
		# when '2' then
			# if stack1.is_empty!=true then
				# stack1.pop(data)
			# else 
				# puts "Stack sudah kosong!"
			# end
		# when '3' then
			# stack1.cetak
		# when '4' then
			# stack1.clear
		# when '5' then
			# puts "Exit success!"
		# else print "Error command!"
	# end
# end while pilih!='5'