#!/usr/bin/env ruby -wKU

class Aman
	def nama=(nama)
		@nama=nama
	end

	def nama
		return @nama
	end
end

name=Aman.new
name.nama="Jon"
puts name.nama