class Sandimorse
	$morse=$kata=[]

	def to_sandi(key)
		$kata=key.chars.to_a
		(0..($kata.length-1)).each do |j|
			$morse[j]="morse_a" if $kata[j]=='a'
			$morse[j]="morse_b" if $kata[j]=='b'
			$morse[j]="morse_c" if $kata[j]=='c'
			$morse[j]="morse_d" if $kata[j]=='d'
			$morse[j]="morse_e" if $kata[j]=='e'
			$morse[j]="morse_f" if $kata[j]=='f'
			$morse[j]="morse_g" if $kata[j]=='g'
			$morse[j]="morse_h" if $kata[j]=='h'
			$morse[j]="morse_i" if $kata[j]=='i'
			$morse[j]="morse_j" if $kata[j]=='j'
			$morse[j]="morse_k" if $kata[j]=='k'
			$morse[j]="morse_l" if $kata[j]=='l'
			$morse[j]="morse_m" if $kata[j]=='m'
			$morse[j]="morse_n" if $kata[j]=='n'
			$morse[j]="morse_o" if $kata[j]=='o'
			$morse[j]="morse_p" if $kata[j]=='p'
			$morse[j]="morse_q" if $kata[j]=='q'
			$morse[j]="morse_r" if $kata[j]=='r'
			$morse[j]="morse_s" if $kata[j]=='s'
			$morse[j]="morse_t" if $kata[j]=='t'
			$morse[j]="morse_u" if $kata[j]=='u'
			$morse[j]="morse_v" if $kata[j]=='v'
			$morse[j]="morse_w" if $kata[j]=='w'
			$morse[j]="morse_x" if $kata[j]=='x'
			$morse[j]="morse_y" if $kata[j]=='y'
			$morse[j]="morse_z" if $kata[j]=='z'
		end
	end	
end

sandi=Sandimorse.new
print "Input kata: "
$kata=gets.chomp
# sandi.set_key("kata")
sandi.to_sandi($kata)
puts "#{$kata} "
puts "\n"
puts "#{$morse} "		