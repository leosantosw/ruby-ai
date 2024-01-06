require 'sinatra/base'
require_relative './app/controllers/api_controller'

class App < Sinatra::Base
  use ApiController
end

App.run! if $PROGRAM_NAME == __FILE__
