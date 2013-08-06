class Nama
	def set_nama(nama)
		@nama=nama
	end
	def get_nama
		return @nama
	end
end

a=gets

nama1=Nama.new
nama1.set_nama(a)
puts("Haloha! #{nama1.get_nama}")