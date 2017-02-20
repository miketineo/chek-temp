require 'rack'

app = Proc.new do |env|
  ['200', {'Content-Type' => 'application/json'}, ["'{'temp': '21.0'}'"]]
end

Rack::Handler::WEBrick.run(app, :Port => 9292)
