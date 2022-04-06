require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
enable :sessions
  # our routes would go here
get '/' do
    redirect to('/name-form')
end

get '/name-form' do
 
  erb(:name_form)
end

post '/names' do
  session['p1name'] = params[:p1name]
  session['p2name'] = params[:p2name]
  redirect to('/play')
end
get '/play' do
  @p1name = session['p1name']
  @p2name = session['p2name']
  @player1 = Player.new
  @player2 = Player.new
  erb :play
end  

  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end