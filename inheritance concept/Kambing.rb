require "#{__dir__}/Binatang"

class Kambing < Binatang
	def initialize
		super("Mamalia")
	end

	def set_nama(nama)
		@nama = nama	
	end

	def set_suara(suara)
		@suara = suara
	end

	def to_s
		"Sejenis #{@jenis}, seekor #{@nama} : #{@suara}"
	end
end

k = Kambing.new
k.set_nama("kambing")
k.set_suara("mengembik")
puts k.to_s