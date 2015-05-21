# erge answers 'Sure.' if you ask him a question.

# He answers 'Woah, chill out!' if you yell at him (ALL CAPS).

# He says 'Fine. Be that way!' if you address him without actually saying anything.

# He answers 'Whatever.' to anything else.

# What do you need to do?

# Do it in Ruby.
# Make sure you use classes and try to use some instance variables
# If you have flown through it, try and figure out how to call methods on the class itself



require 'pry'
# class SergeSays

 
#   def is_yelling?(message)

#    if !(message.empty?) 
#      message == message.upcase 
#   end

#   end

#   def is_a_question?(message)

#     message.end_with?('?')
#   end

#   def is_silent?(message)

#       message.empty?
#   end

# end

#  def fetch_input(prompt)
#   print prompt
#   gets.chomp # implicit return
# end

# message = fetch_input "What do you have to say to serge ? "

# sergereplies  = SergeSays.new

# if sergereplies.is_yelling?(message)
#   puts " Woah, chill out! "  
# elsif sergereplies.is_silent?(message)
#   puts " Fine. Be that way! " 
# elsif sergereplies.is_a_question?(message)
#     puts "Sure. " 
# else
#   puts "Whatever." 
# end
 

 # Jack's Method
class Serge
  
  def self.speak statement
    serge =Serge.new
    serge.speak statement
  end

  def speak (statement)
    @statement = statement

  end
  case true
  when quizzical?
    puts "Sure. "

  when silent?
    puts "Fine.Be that way "

  when loud?
    puts "Woah, chill out!"

  else
     puts "Whatever.
  end


  def quizzical?
    @statement.strip.end_with?('?')
  end

  def silent?
    @statement.strip.empty?

  end

  def loud?

    @statement == @statement.upcase && !silent?
  end

end

serge = Serge.new
serge.speak("WHAT IS THIS ")
serge.speak(" ")
serge.speak("wat?")
se
serge,quizzical?

binding.pry
puts""


