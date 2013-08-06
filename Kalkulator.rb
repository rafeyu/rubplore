class Kalkulator
	def self.plus(a,b)
		return a+b
	end
	
	def self.minus(a,b)
		return a-b
	end
	
	def self.kali(a,b)
		return a*b
	end
	
	def self.divide(a,b)
		bil1=a.to_f
		bil2=b.to_f
		return (a/b)
	end
	
	def self.mod(a,b)
		return a%b
	end
end

print "==========\nKalkulator\n==========\n"
print "1. Plus\n2. Minus\n3. Kali\n4. bagi\n5. Modulo\n"
puts
print "Bil1: "
x=gets.to_i
print "Bil2: "
y=gets.to_i
print "Pilih menu: "
menu=gets.chomp
if menu=="1"
	hasil=Kalkulator.plus(x,y)
elsif menu=="2"
	hasil=Kalkulator.minus(x,y)
elsif menu=="3"
	hasil=Kalkulator.kali(x,y)
elsif menu=="4"
	hasil=Kalkulator.divide(x,y)
elsif menu=="5"
	hasil=Kalkulator.mod(x,y)
else print "Masukkan menu 1-5\n"
end
puts "Hasil => #{hasil}"