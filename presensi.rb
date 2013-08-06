=begin
	implementasi matkul java (presensi) di ruby
	by Ramdzi
=end
nama=["Jojon","Bobon","Dodon","Gogon"]
absen=[0,0,0,0,0]

# no induk jojon=0 .. gogon=3
begin
	puts
	print "Insert no induk : "
	no=gets.to_i
	if nama[no] then
		absen[no]+=1
		puts "Mahasiswa #{nama[no]} berhasil di insert"
	elsif no==666
		puts "Keluar"
	else
		absen[4]+=1
		puts "Data mahasiswa tidak ada!"
	end
end while no!=666
puts
(0..(nama.length-1)).each do |i|
	puts "#{nama[i]} presensi #{absen[i]} kali"
end
if absen[4]>0 then
	puts "Error #{absen[4]} kali"
end