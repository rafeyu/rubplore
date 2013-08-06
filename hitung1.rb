=begin
	Buat pengurangan beruntun dari array[0] ke 
	array[n]. Tapi belum berhasil.
=end
# untuk '+' sukses, sekarang ganti '-'
arr = []
# begin
	# print "Input : "
	# nilai=gets.to_i
	# arr<<nilai
	# print "lagi? [y/n] "
	# y=gets.chomp
# end while y=='y' || y=='Y'
# print arr
# puts
# total=0
# (0..(arr.length-1)).each do |i|
	# arr[i+1] ||= 0
	# total=arr[i]-arr[i+1]
# end
# puts "Total = #{total}"
arr = [10,3,2]
print arr
puts
total ||= 0
(1..(arr.length)).each do |i|
	j=i-1
	arr[i] ||= 0
	total=arr[j]-arr[i]
end
puts "Total = #{total}"