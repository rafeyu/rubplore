class Main
	def initialize()
		@model = JadwalModel.new("Nama Mata Kuliah")
		@controller = JadwalController.new()
		@view = JadwalView.new()
	end
end

# main = Main.new()