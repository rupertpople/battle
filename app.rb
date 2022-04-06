require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  # our routes would go here
get '/' do
    p 'Testing infrastructure working!'
end

get '/name-form' do
  erb(:name_form)
end

post '/names' do
  @p1name = params[:p1name]
  @p2name = params[:p2name]
  erb(:play)
end


  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end