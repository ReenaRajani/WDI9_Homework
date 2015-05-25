require 'sinatra'
require 'sinatra/reloader'
require_relative 'rps.rb'
require 'pry'

get '/' do 
  erb :home
  
end

get '/magic8' do
  erb:magic8
end

get '/magic8/execute' do
  erb :magic8exe
end

get '/secret' do
  erb:secretno
end

get '/secret/execute/' do

  erb:secretexe
end


get '/rps' do
  erb:rps
end

get '/rps/:throw' do

  @playerMove = params[:throw]
  @computerMove = randomPlay
  @result  = getWinner(@playerMove,@computerMove)
  if @result == "computer"
    erb :computerWins
  else
    erb :playerWins
  end
   
end