#!/usr/bin/env ruby -wKU
class Jadwal
	# attr_accessor :matkul,:hari
	def initialize(arr)
		@arr = arr = []
	end

	# def create(matkul,hari,i)
		
	# end

	def to_table(matkul,hari)
		out = File.new("Jadwal.txt", "w")
		out.puts "======================"
		out.puts "#{matkul} | #{hari}"
		out.close
	end
end

j = Jadwal.new()
# print "Mata Kuliah : "
# matkul = gets
# print "Hari : "
# hari = gets
# j.to_table(matkul,hari)