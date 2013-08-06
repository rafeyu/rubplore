=begin
	coba fungsi gsub + regex ruby
=end
kata="jojon"
arr_kata=kata.chars.to_a
puts kata
ubah_kata=kata.gsub(/./,"*")	#=> ubah semua karakter menjadi "*"
puts ubah_kata
puts
print "Input tebak: "
tebak=gets.chomp
# if tebak==arr_kata[4] then
	# ubah_kata_lagi=ubah_kata.gsub(/./,"\\1")
	# puts tebak
# end

(0..4).each do |i|
	if arr_kata.index(tebak) then
		print kata[i].gsub(/([a_zA-Z])/,"")
	end
end