=begin
	Simple shutdown command (Win32 only) v2.5
	author	: Ramdzi
	site	: www.rafeyu.info
=end
case ARGV[0]
	when "-v" then
		puts "Simple Shutdown Command (Win32 only)\nVersion 2.5"
		puts "\nRamdziana F Y - www.rafeyu.info"
	when "-h" then
		puts "help: ssc [command] [option]"
		puts "\ncommand:"
		puts "-h \t\t\tshow this message"
		puts "-v \t\t\tshow version of SSC"
		puts "shutdown [option]\tshutdown the computer directly"
		puts "restart [option]\trestart the computer directly"
		puts "abort \t\t\tabort the command"
		puts "\noption:"
		puts "option refers to time on second(s)"
		puts "\nexample:"
		puts "ssc shutdown 30\t(shutdown the computer on 30 seconds)"
	when "shutdown" then
		# tambah perintah untuk shutdown dengan waktu mundur
		if ARGV[1]
			system "shutdown -s -f -t #{ARGV[1]}"
		else
			system "shutdown -s -f -t 0"
		end
	when "restart" then
		# tambah perintah untuk restart dengan waktu mundur
		if ARGV[1]
			system "shutdown -r -f -t #{ARGV[1]}"
		else
			system "shutdown -r -f -t 0"
		end
	when "abort"
		# membatalkan perintah dengan abort
		system "shutdown -a"
	else
		puts "usage: ssc [command] [option]"
		puts "ssc -h (to show the help)"
end