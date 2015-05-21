# Activity:

# Students should create a program that models a simple subway system.

# The program takes the line and stop that a user is getting on at and the line and stop that user is getting off at and prints the total number of stops for the trip.

# There are 3 subway lines:
# The N line has the following stops: Times Square, 34th, 28th, 23rd, Union Square, and 8th
# The L line has the following stops: 8th, 6th, Union Square, 3rd, and 1st
# The 6 line has the following stops: Grand Central, 33rd, 28th, 23rd, Union Square, and Astor Place.
# All 3 subway lines intersect at Union Square, but there are no other intersection points.
# For example, this means the 28th stop on the N line is different than the 28th street stop on the 6 line, so you'll have to differentiate this when you name your stops in the arrays.

# Tell the user the number of stops AND the stops IN ORDER that they will pass through or change at.
# Hints:


# Don't worry about user input initially: get it working with hardcoded values first, and wire up the user interface once that's working
# Consider diagraming the lines by sketching out the subway lines and their stops and intersection.
# Make subway lines keys in a hash, while the values are an array of all the stops on each line.
# The key to the lab is to find the intersection of the lines at Union Square.
# Make sure the stops that are the same for different lines have different names (i.e. 23rd on the N and on the 6 need to be differentiated)

# 

#   __                .__        
# _/  |_____________  |__| ____  
# \   __\_  __ \__  \ |  |/    \ 
#  |  |  |  | \// __ \|  |   |  \
#  |__|  |__|  (____  /__|___|  /
#                   \/        \/ 


# 
 require 'pry'
 # binding.pry


$src_line=''
$dest_line=''
$list


# hash of the lines and its stations
$lines = {
  :Nline => ["Times Square", "34th", "28th on N","23rd on N", "Union Square","8th on N"],
  :Lline => ["8th on L","6th","Union Square","3rd","1st"],
  :Line6 => ["Grand Central","33rd","28th on 6","23rd on 6","Union Square","Astor Place"]
}

# get the start point from the user
def fetch_source 
  print "Enter the source : "
  gets.chomp
end 

# get the destination point from the user
def fetch_destination 
  print "Enter the destination : "
  gets.chomp
end 


# check if the stations are valid or not 
def valid_stop?(stop) 
   # $lines.values.flatten.find { |value| value == stop }
   $lines.values.flatten.include? stop
end


# get the line of the station
# loops thru the $lines, and selects a match based on the condition stations.include? and then to return only the key use .key at the end 
def get_line(stop)
    
    $lines.select do |line,stations|
        stations.include?(stop) 
    end.keys
end

# check if the srcline and destination line are the same 
def is_same_line
$src_line == $dest_line 
end 


def change_unionsquare_line

  if $src_line ==[:Nline, :Lline, :Line6]
      $src_line = $dest_line
  elsif $dest_line == [:Nline, :Lline, :Line6]
      $dest_line = $src_line
  end
end


# 
#  _____                        _      _            
#  / ____|                      | |    (_)           
# | (___   __ _ _ __ ___   ___  | |     _ _ __   ___ 
#  \___ \ / _` | '_ ` _ \ / _ \ | |    | | '_ \ / _ \
#  ____) | (_| | | | | | |  __/ | |____| | | | |  __/
# |_____/ \__,_|_| |_| |_|\___| |______|_|_| |_|\___|
                                                   
# 


# if the stations are on the same line 
def same_line_travel(line, source, destination)

  # since the return value is an array user line.first to get the value instead of doing what you did !!!!!! simple
  key = line.to_s.slice(2 ..line.to_s.length-2).to_sym

  src_index = $lines[key].index(source)
  dest_index =  $lines[key].index(destination)
  
  if src_index > dest_index
    line =  $lines[key].slice(dest_index ..src_index).reverse
  else
    line =  $lines[key].slice(src_index ..dest_index)
  end
  
  return line 

end 




# 
# _____  _  __  __   _      _            
# |  __ \(_)/ _|/ _| | |    (_)           
# | |  | |_| |_| |_  | |     _ _ __   ___ 
# | |  | | |  _|  _| | |    | | '_ \ / _ \
# | |__| | | | | |   | |____| | | | |  __/
# |_____/|_|_| |_|   |______|_|_|\___|                            
#
# 

def different_line_travel(source , destination)

  listsrc = same_line_travel($src_line, source ,"Union Square")
  listdest = same_line_travel($dest_line,"Union Square",destination)

    puts " Your travel Itenary from #{source} to #{destination} "
    puts "#{'*'*100}"
    puts "You must travel through the following stops on #{$src_line} #{listsrc}"
    puts "Change at Union Square "
    puts "Your Journey continues through the following stops #{listdest}"
    
     puts "#{(listsrc + listdest).uniq.length}  stops in total "
     puts " Have a safe Journey"
     puts "#{'!'*100}"
end 


def plan_my_trip 

  source = fetch_source
     p "#{valid_stop?(source)}"
  destination = fetch_destination
    p "#{valid_stop?(destination)}"
    if(valid_stop?(source) && valid_stop?(destination))
      puts "valid source and destination "
     
      if(source == destination)
        puts "Your Source and Destination are the same.You dont have to travel by Train !! Please Walk , its good for you !!"
      else
      $src_line = get_line(source)
      $dest_line = get_line(destination)

      change_unionsquare_line

      # p "#{$src_line}" 
      # p "#{$dest_line}"



      if is_same_line 

        station_list = same_line_travel($src_line, source, destination) 
        
        puts " Your travel Itenary from #{source} to #{destination} "
        puts "#{'*'*50}"
        puts "You must travel through the following stops on #{$src_line} #{station_list.to_s}"
        puts "#{station_list.length} in total "
        puts " Have a safe Journey"
        puts "#{'*'*50}"

      else

        station_list = different_line_travel(source, destination)



      end # end of line travels

      end
  



  else
    puts "Invalid source or destination "
  
  end # if statement end 

end # end of plan_my_trip


 p "#{get_line("Union Square")}"
plan_my_trip


