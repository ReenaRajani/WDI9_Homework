require 'sinatra'
require 'sinatra/reloader'
require 'httparty'


get '/' do 
  @title =params[:title]
  if @title
     url = "http://omdbapi.com/?t=#{ @title }"
    @movie_data = HTTParty.get url if url

  end

  erb:movies

end
