print "Banyak data: "
n=gets.to_i
gets
print "input d1: "
d1=gets.to_i
print "input d2: "
d2=gets.to_i
gets

if d1>d2 then
	maxp=d1
else
	maxn=d2
end

for i in 3..n do
	print "input d3: "
	data=gets.to_i

	if data>maxp then
		maxp=data
	elsif data>maxn and data<0
		maxn=data
	end
end
gets
puts "maxn : #{maxn}"
puts "maxp : #{maxp}"
		