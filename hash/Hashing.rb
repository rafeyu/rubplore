require 'digest'

module Hashing
	class Hash
		def toMD5(value)
			Digest::MD5.hexdigest(value)
		end

		def toSHA1(value)
			Digest::SHA1.hexdigest(value)
		end
	end
end

hashing = Hashing::Hash.new
puts "#{hashing.toMD5('jos')} => MD5 from \'jos\'"
puts
puts "#{hashing.toSHA1('jos')} => SHA1 from \'jos\'"