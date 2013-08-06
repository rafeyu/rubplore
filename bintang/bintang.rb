i=j=k=l=1;

print "n: "
max=gets.to_i
x=max/2

# segitiga naik
(i..x).each do |i|
	(j..i).each do |j|
		print "*"
	end
	puts
end

if max%2!=0 then
	y=x+1
	# segitiga turun n ganjil
	y.downto(k) do |i|
		i.downto(k) do |j|
			print "*"
		end
	puts
	end
else
	# segitiga turun n genap
	x.downto(k) do |i|
		i.downto(k) do |j|
			print "*"
		end
	puts
	end
end