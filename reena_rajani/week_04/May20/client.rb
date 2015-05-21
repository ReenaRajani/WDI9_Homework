# Client:

# A client should have a name.
# A client should have a number of children.
# A client should have an age.
# A client should have a number of pets.

class Client

  attr_accessor :name,:age,:no_of_children

  def initialize name, age, no_of_children
    @name = name
    @age = age
    @no_of_children = no_of_children
    @animals =[]
  end

  
  def to_s
   "My Name is #{@name}. I am of age #{@age} . I have #{@no_of_children} children and #{@animals.length} pets"
  end

  def set_adoption(animal_obj)
    @animals <<animal_obj
  end


  def place_for_adoption(index)
     @animals.delete_at(index) if @animals.any? 
  end

  def display_animals
    @animals.each_with_index do |animal,index| 
      puts " #{index} , #{animal}"
    end
  end

  def no_of_animals
    @animals.length
  end

  def get_animal(index)
    @animals[index]
  end
end