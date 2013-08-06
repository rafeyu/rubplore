=begin
	Program by Ramdzi -www.rafeyu.info
	Implementasi tugas Struktur Data 24 September 12 dengan bahasa Ruby
	dengan data type biasa
=end
class TaskSDruby
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
		$bil1=gets.to_i
		print "Angka ke-2 : "
		$bil2=gets.to_i
	end
end

task=TaskSDruby.new
print "Input banyak data: "
n=gets.to_i
puts
total=0

if n>2
	task.input_awal
	task.tentukan_max_min($bil1,$bil2)
	
	(3..n).each do |i|
		print "Angka ke-#{i} : "
		angka=gets.to_i
		if angka>$max
			$max=angka
		elsif angka<$min
			$min=angka
		end
		total=total+angka
	end
	$total_semua=total+$bil1+$bil2
	task.output
elsif n==2
	task.input_awal
	task.tentukan_max_min($bil1,$bil2)
	$total_semua=$bil1+$bil2
	task.output
else print "Gagal!"
end
puts