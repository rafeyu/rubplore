t1 = Thread.new {print "w"; Thread.pass; print "e"}
t2 = Thread.new {print "a"; Thread.pass; print "l"}

t1.join
t2.join
t1.kill
t2.kill
# print "r"
# sleep(2)
# print "a"
# sleep(2)
# print "m"
# sleep(2)
# print "d"
# sleep(2)
# print "z"
# sleep(2)
# print "i"
# sleep(2)