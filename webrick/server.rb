require "webrick"
include WEBrick
# myserver = HTTPServer.new(:Port => 8080, :DocumentRoot => "D:/aden/latihan")
myserver = HTTPServer.new(Port: 8080, DocumentRoot: "D:/aden/latihan")
myserver.start