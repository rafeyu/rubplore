#!/usr/bin/env ruby

email="ramdzian@gmail.com"
pass="***********"
file="algoritmaHangman.rb"
# cjar="tmp/"

puts "Login .."

# system("curl -c #{cjar} -d 'login_email=#{email}&login_password=#{pass}&login_submit_dummy=Sign%20in' https://www.dropbox.com/login")
system(" curl -k -L -s -c 'cookie.txt' -o 'output.txt' -F 'login_email=ramdzian@gmail.com' -F 'login_password=*************' '<a href='https://www.dropbox.com/login'>https://www.dropbox.com/login</a>' ")

puts "Login success .."

system(" curl -k -L -s -b cookie.txt -o 'output.txt' '<a href='https://www.dropbox.com/home#'>https://www.dropbox.com/home</a>'
TOKEN=`cat output.txt | tr -d '\n' | sed 's|.*form action='<a href='https://dl-web.dropbox.com/upload'>https://dl-web.dropbox.com/upload</a>'||g' | sed 's|.*||g' | sed 's|.*name='t' value='||g' | sed 's|' .*||g'` ")

puts "Upload file .."

# system("curl -L -b #{cjar} -F 't=$TOKEN' -F 'file=@#{file}' -F 'dest=/backups' -F 'plain=YES' https://dl-web.dropbox.com/upload")
system(" curl -k -L -s -b 'cookie.txt' -o 'output.txt' -F 't=$TOKEN' -F 'file=@file.txt' -F 'dest=/backups' -F 'plain=YES' '<a href='https://dl-web.dropbox.com/upload'>https://dl-web.dropbox.com/upload</a>' ")