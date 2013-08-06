=begin
	Simple shutdown command (Win32 only)
	author	: Ramdzi
	site	: www.rafeyu.info
=end
case ARGV[0]
	when "-v" then
		puts "Simple Shutdown Command (Win32 only)\nVersion 1.0"
	when "-h" then
		puts "help: ssc [command]"
		puts "\ncommand:"
		puts "-h \t\tshow this message"
		puts "-v \t\tshow version of SSC"
		puts "shutdown \tshutdown the computer directly"
		puts "restart \trestart the computer directly"
	when "shutdown" then
		system "shutdown -s -f -t 0"
	when "restart" then
		system "shutdown -r -f -t 0"
	else
		puts "usage: ssc [command]"
		puts "ssc -h (to show the help)"
end