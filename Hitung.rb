class Hitung < Kalkulator
	print "Bil1: "
	x=gets.to_i
	print "Bil2: "
	y=gets.to_i
	puts "Hasil jumlah #{Kalkulator.plus(x,y)}"
end