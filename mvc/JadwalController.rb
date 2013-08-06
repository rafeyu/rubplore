#!/usr/bin/env ruby -wKU

class JadwalController	
	def initialize()
		@model = JadwalModel.new
		@view = JadwalView.new
	end

	def update_matkul(matkul)
		@model.set_matkul(matkul)
	end

	def show_matkul(matkul)
		@view.get_matkul(matkul)
	end
end