	class Profile
		def self.identity
			nama = "Ramdziana F Y" if name.ask?
			alamat = "Yogyakarta" if address.ask?
			twitter = "@aldzal" if twitter.ask?
			blog = "www.rafeyu.info" if blog.ask?
		end
	end