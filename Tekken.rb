#!/usr/bin/env ruby

=begin
	implementasi simulasi Tekken di Ruby
=end
class Tekken
	def initialize(nama,health)
		@nama=nama
		@health=health
	end
	
	def set_nama
		@nama=nama
	end

	def set_health
		@health=health
	end

	def get_nama
		@nama
	end

	def get_health
		@health
	end

	def left_punch
		puts "Left punch"
	end

	def right_punch
		puts "Right punch"
	end

	def left_kick
		puts "Left kick"
	end

	def right_kick
		puts "Right kick"
	end

	def damage
		@health-=20
	end
end

p1=Tekken.new("Paul",100)
p2=Tekken.new("King",100)
puts "#{p1.get_nama}(#{p1.get_health}) vs #{p2.get_nama}(#{p2.get_health})"
puts "Start .."

until p1.get_health==0 || p2.get_health==0
	print "\n\nControl : "
	control=gets.chomp
	case control
	when '0' then
		puts "#{p1.get_nama}(#{p1.get_health}) vs #{p2.get_nama}(#{p2.get_health})"
	when '1' then
		puts "#{p1.get_nama}"
		p1.left_punch
		p2.damage
	when '2' then
		puts "#{p1.get_nama}"
		p1.right_punch
		p2.damage
	when '3' then
		puts "#{p1.get_nama}"
		p1.left_kick
		p2.damage
	when '4' then
		puts "#{p1.get_nama}"
		p1.right_kick
		p2.damage
	when '5' then
		puts "#{p2.get_nama}"
		p2.left_punch
		p1.damage
	when '6' then
		puts "#{p2.get_nama}"
		p2.right_punch
		p1.damage
	when '7' then
		puts "#{p2.get_nama}"
		p2.left_kick
		p1.damage
	when '8' then
		puts "#{p2.get_nama}"
		p2.right_kick
		p1.damage
	else
		puts "No control"		
	end
end

if p1.get_health==0
	puts "\n#{p2.get_nama} wins!"
else
	puts "\n#{p1.get_nama} wins!"
end