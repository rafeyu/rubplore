arr = Array.new
arr = [1,3,5,7,11]
p=arr.length			#=> panjang array
print arr
puts
print "Cari: "
cari=gets.to_i
puts
(0..p-1).each do |i|
	if cari==arr[i] then
		puts "Nilai #{cari} ketemu di posisi #{i}"
	end
end