=begin
	Program by Ramdzi -www.rafeyu.info
	Implementasi tugas Struktur Data 24 September 12 dengan bahasa Ruby
	dengan data type array
=end
class TaskSDruby1
	$angka=Array.new
	def tentukan_max_min(a,b)
		if a>b
			$max=a
			$min=b
		elsif a<b
			$max=b
			$min=a
		else
			$max=a
		end
	end

	def output
		puts "\nTotal => #{$total_semua}"
		puts "Bilangan terbesar => #{$max}"
		puts "Bilangan terkecil => #{$min}"
		puts "Range => #{$max-$min}"
	end
	
	def input_awal
		print "Angka ke-1 : "
		$angka[0]=gets.to_i
		print "Angka ke-2 : "
		$angka[1]=gets.to_i
	end
	
	def input
		$bil=gets.to_i
		$angka<<$bil
	end
end

task=TaskSDruby1.new
print "Input banyak data: "
n=gets.to_i
puts
total=0

if n>2
	task.input_awal
	task.tentukan_max_min($angka[0],$angka[1])
	(3..n).each do |i|
		print "Angka ke-#{i} : "
		task.input
		if $bil>$max
			$max=$bil
		elsif $bil<$min
			$min=$bil
		end
		total=total+$bil
	end
	$total_semua=total+$angka[0]+$angka[1]
	task.output
else print "Gagal!"
end
puts "#{$angka}"