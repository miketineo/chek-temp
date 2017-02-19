require 'bundler'
require 'json'
Bundler.require
Loader.autoload

class App < Rack::App

  desc "Checking room temp"
  get '/' do
    "{'temp': '21.0'}"
  end
end
