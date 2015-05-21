# Animal:

# An animal should have a name.
# An animal should have an age.
# An animal should have a gender.
# An animal should have a species.
# An animal can have multiple toys.

class Animal

attr_accessor :name, :age, :gender, :species, :toys

def initialize(name,age,gender,species,toys)
  @name = name
  @age = age
  @gender = gender
  @species = species
  @toys = toys
end

#do not use puts "message" as this would not return anything. just give the message in quotes
def to_s

   "My Name is #{@name}. I am of age #{@age} . I am a  #{@gender} animal of species #{@species} and I love #{@toys}"

end

end