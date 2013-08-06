=begin
	Penghitungan tambah kurang kali bagi
	pake Array
=end
def output_bil(array)
	puts "\nBilangannya : #{array}"
end
def tambah(panjang_arr,a)
	total=0
	(0..(panjang_arr-1)).each do |i|
		total=total+a[i]
	end
	return total
end
# def kurang(panjang_arr,a)
	# total=0
	# (0..(panjang_arr-1)).each do |i|
		# total=a[i]-a[i+1]
	# end
	# return total
# end
def kali(panjang_arr,a)
	total=1
	(0..(panjang_arr-1)).each do |i|
		total=total*a[i]
	end
	return total
end
# def bagi(panjang_arr,a)
	# total=0
	# (0..(panjang_arr-1)).each do |i|
		# total=a[i]/a[i+1]
	# end
	# return total.to_f
# end
def hapus_array(array)
	puts "\nHapus isi array ..."
	array.clear
	puts "\nArray berhasil dihapus!"
end

angka=Array.new
i=0
begin
	print "Input angka ke #{i+1} : "
	angka[i]=gets.to_i				#=> metode input ke array .. klasik
	# bil=gets.to_i					#=> metode input ke array .. 
	# angka<<bil					#=> ruby banget
	print "lagi? [y/n] "
	y=gets.chomp
	i+=1
end while y=='y' || y=='Y'
output_bil(angka)
puts "Total tambah: #{tambah(angka.length,angka)}"
# puts "Total kurang: #{kurang(angka.length,angka)}"
puts "Total kali: #{kali(angka.length,angka)}"
# puts "Total bagi: #{bagi(angka.length,angka)}"
hapus_array(angka)
bilangan = if angka.nil? then
	"#{angka}"
else
	"kosong"
end
puts "\nIsi bilangan sekarang : #{bilangan}"