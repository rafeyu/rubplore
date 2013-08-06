=begin
	Coba algoritma Hangman

	Ahad, 14 Januari 2013, 9:54pm on +7 of GMT
	author : Ramdzi
=end

#!/usr/bin/env ruby

def header
	puts "\t\t\t====================="
	puts "\t\t\t| Game Hangman v1.0 |"
	puts "\t\t\t|    ( hewan )      |"
	puts "\t\t\t====================="
end

garis=[]
huruf=[]
# MAX_FALSE_GUESS=3
# false_guess=0
live=3
word_count=0
dbase=%w(gajah harimau elang panda)
# beruang angsa ayam monyet unta koala musang)
tebak=nil

until word_count==3 || live==0 || dbase==[]
	tebakan_kata=false
	kata=dbase[rand(0..3-word_count)]
	huruf=kata.split(//)

	panjang=kata.length
	# buat garis penampung tebakan
	(0..panjang-1).each {|i| garis[i] = '_'}

	until live==0 || tebakan_kata==true
		system("cls")
		header
		puts "\n\n"
		if garis.eql?(huruf)==true
			dbase.delete(kata)
			tebakan_kata=true
			word_count+=1
		else
			if tebak!=''
				puts "|Kesempatan menebak #{live}x|\n\n"
			else
				puts "Ketik huruf tebakan anda\n\n"
				puts "|Kesempatan menebak #{live}x|\n\n"
			end
			# outputkan garis
			(0..panjang-1).each {|i| print "#{garis[i]} "}

			print "\n\nTebak: "
			tebak=gets.chomp.downcase.strip
			# check, is there "tebak" in "huruf"?
			if huruf.include?(tebak)==true
				# cek apakah tebak=huruf
				(0..panjang-1).each do |i|
					garis[i]=tebak if tebak==huruf[i]
				end
			else
				# klo tebakan salah false_guess tambah 1 kecuali input kosong
				live-=1 unless tebak==''
			end
		end
	end
end
system("cls")
if live==0
	header
	puts "Dead!\n\n"
	puts "Press \"enter\" to end .."
	gets
end
if word_count==3 || dbase==[]
	header
	puts "Selamat anda menang"
	puts "Press \"enter\" to end .."
	gets
end