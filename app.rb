require "sinatra"
require "unicorn"
require 'socket'

class App < Sinatra::Base
  get "/hostname" do
    Socket.gethostname
  end
end
