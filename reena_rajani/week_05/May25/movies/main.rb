require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'pry'

get '/' do 
  erb :home
end

get '/movies/' do
   @title =params[:title]
   if @title
       url = "http://omdbapi.com/?s=#{ @title }"
       @movie_data = HTTParty.get url if url
       @movie_names =[]
       if @movie_data.values[0] == "False"
           "Movie not found!"
        elsif @movie_data.values[0].length > 1
          @movie_data.values[0].each do |details|
          @movie_names << details["Title"]
          end 
          erb :movie_list 
        else
          url = "http://omdbapi.com/?t=#{ @title }"
           @movie_data = HTTParty.get url if url
           erb :movie_details
           # binding.pry
       end
              
  end
end

get '/movies/details/:name' do
  @name =params[:name]
  if @name
     url = "http://omdbapi.com/?t=#{ @name }"
    @movie_data = HTTParty.get url if url
  end
  erb :movie_details
end


