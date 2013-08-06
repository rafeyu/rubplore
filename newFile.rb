class Nama
	def initialize(name)
		@name=name
	end
	
	def to_s
		"#{@name}"
	end
end
print "Input nama: "
a=gets
nama_saya=Nama.new(a)
output=File.new("file.txt", "w")
output.puts nama_saya.to_s
puts
puts "Your file has been created!"
output.close