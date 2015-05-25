require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'httparty'

get '/' do 
  @title =params[:title]
  binding.pry
  if @title
     url = "http://omdbapi.com/?s=#{ @title }"
    @movie_list = HTTParty.get url if url
    @movie_names =[]
    if @movie_list.values[0] == "False"
      puts "Movie not found!"
    else
      @movie_list.values[0].each do |details|
        @movie_names <<details["Title"]
      end
    end
      if @movie_names.length > 1
        erb :movies
      else 
        @movie_data = @movie_list
        erb :list
      end
  else
    puts "ZHHHHHHHH"
    erb :movies
  end
end

get '/list' do 
  @name =params[:moviename]
  if @name
     url = "http://omdbapi.com/?t=#{ @name }"
    @movie_data = HTTParty.get url if url

  end

  erb:list

end


# get '/'  do
#   erb :home 
# end 

# get '/movies/:title' do
#   @title =params[:title]
#   if @title
#      url = "http://omdbapi.com/?s=#{ @title }"
#     @movie_list = HTTParty.get url if url
# end 
