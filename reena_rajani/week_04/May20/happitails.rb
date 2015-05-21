# $shelter[:animals] << Animal.new('pop',2,'male','dogggy','erfe')
# $shelter[:animals] << Animal.new('poppy',2,'f','dogggy','erfe')
# $shelter[:animals] << Animal.new('henry',4,'male','pusheen','soft toys milk')

# $shelter[:clients] << Client.new("Pascal",45,3)
# $shelter[:clients] << Client.new("Ada",23,1)




require 'csv'
require 'YAML'
require_relative 'animal'
require_relative 'client'
require 'pry'

$shelter ={:animals => [], :clients => []}
file = YAML::load_file "shelter.yml"
puts file.inspect

def display_menu
  puts " "
  puts " "
  puts "[1] Display Animal List "
  puts "[2] Display Client List "
  puts "[3] new Animal "
  puts "[4] new client "
  puts "[5] adopt an animal "
  puts "[6] place an animal for adoption "
  puts "[q] quit"

end


def create_animal

  puts "You want to create a new Animal ..Lets begin with a set of questions "

  print " Name of the Animal : "
  name = gets.chomp

  print "Animal's Age ? "
  age = gets.to_i

  print "Animal's Gender ? "
  gender = gets.chomp

  print "What Species is the Animal ?"
  species = gets.chomp

  print "What kind of toys the Animal like ? "
  toys = gets.chomp

  puts "That's It You are done !! Thank you "

   $shelter[:animals] << Animal.new(name, age, gender, species, toys) 

end

#  animals =[]
# animals << create_animal

def create_client

  puts "You want to create a new client database ..Lets begin "

  print " Client's Name : "
  name = gets.chomp

  print "Clients's Age ? "
  age = gets.to_i

  print "How many children do you have ? "
  no_of_children = gets.to_i


  puts "All Done !! Thank you "

  $shelter[:clients] << Client.new(name, age, no_of_children)

end
 
 def display_animals
    
    if $shelter[:animals].any? 

      $shelter[:animals].each_with_index  do |details ,index|
       puts "#{index}, #{details.to_s}" 
      end
    else
      puts " We have just set the shop . No Pets Yet "
    end

end

def display_clients

    if $shelter[:clients].any?
      $shelter[:clients].each_with_index  do |details ,index|
      puts "#{index}, #{details.to_s}" 
      end
    else
      puts " No budget to Advertise. No Clients Yet . Please Advertise for us "
    end

end


# functiomn that takes in the adoption of animals by first insterting the animal instance to the client class and then deleting that same entry from the animals class 
def adopt_animals
   display_animals
   puts " "
   print "Enter the index of the animal you want to adopt  :-)"
   animal_index = gets.to_i
   animal_obj = $shelter[:animals].fetch(animal_index)
   
   display_clients
   print "Enter the client index  ==> "
   client_index = gets.to_i

   $shelter[:clients].fetch(client_index).set_adoption(animal_obj) 

   $shelter[:animals].delete_at(animal_index)

end

# places animals for adoption , if the client has pets, they can place for adoption by selecting the animal, the animal instance from the client would be removed and then it would be added to the Animals Class. 

def place_animal_for_adoption

  display_clients
  puts " "
  print "Enter the client index who wants to place an animal for adoption ==> "
  client_index = gets.to_i
  client_details = $shelter[:clients].fetch(client_index)
  
  if client_details.no_of_animals >= 1
    client_details.display_animals
    print "Enter the index of animal you want to let go  :-( "
    animal_index = gets.to_i
    
    #inserting to the animals array 
    $shelter[:animals] << client_details.get_animal(animal_index)

    # deleting from the client by calling the function 
    client_details.place_for_adoption(animal_index)
  
  else
   
    puts " You Don't have any pet to place for adoption !! Do you want to adopt instead (select menu accoirdingly ) ?????  "
  end

end

def fetch_input(prompt)
  print prompt
  gets.chomp.downcase # implicit return
end

def main_program

  puts " Welcome to HappiTails Adoption Center "
  puts "#{'$' * 50}"
  display_menu
  user_choice = fetch_input "Please enter your selection =========>   "
  until user_choice =='q'
    case user_choice
    when '1'
      puts " List of Animals Available  >>"
      puts " "
      display_animals

    when '2'
      puts " Displaying out valuable Clients  >>"
      puts " "
      display_clients

    when '3'
      create_animal

    when '4'
      create_client

    when '5'
      puts " We are happy to help you adopt an animal  ;-)"
      puts " "
      adopt_animals

    when '6'
      puts " We welcome your pet with open arms .. Don't Worry he/she would be safe here "
      puts " "
      place_animal_for_adoption

    end

    display_menu
  user_choice = fetch_input "Please enter your selection =========>   "

  end
 binding.pry
end

def store_to_file
 File.open("shelter.yaml","w") do |file_c|
  file_c.write shelter.to_yaml
 end

end

main_program


 