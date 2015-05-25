require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

get '/' do 
  erb :home
end

get '/foodblog' do
  @foodblog = db_query "SELECT * FROM foodblog"

  erb :foodblog_contents
end