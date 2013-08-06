class Jam
	def initialize(jam,menit,detik)
		@jam=jam
		@menit=menit
		@detik=detik
	end
	
	def to_second
		jam=@jam*3600
		menit=@menit*60
		return jam+menit+@detik
	end
	
	def to_s
		"#{@jam} #{@menit} #{@detik}"
	end
end

print "Input Jam: "
j=gets.to_i
print "Input Menit: "
m=gets.to_i
print "Input Detik: "
d=gets.to_i

clock=Jam.new(j,m,d)
puts clock.to_s
puts clock.to_second