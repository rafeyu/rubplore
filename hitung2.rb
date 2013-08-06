arr = []
total=0
i=0
begin
	print "Input : "
	nilai=gets.to_i
	arr<<nilai
	print "lagi? [y/n] "
	y=gets.chomp
	total=arr[i-1]-arr[i]
	i+=1
end while y=='y' || y=='Y'