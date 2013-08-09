require "dbi"
DBI.connect('DBI:Mysql:ffdb', 'root', '') do |dbh|
	sth = dbh.prepare("SELECT * FROM user")
	sth.execute
	while row = sth.fetch do
		puts row
	end
end