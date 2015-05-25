require 'pry'

# need a scrabble class
# going to need an initialise method
# score function


$scrabblepoint  = {
  1 => ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T' ] ,
  2 => ['D','G'] ,
  3 => ['B', 'C', 'M', 'P' ] ,
  4 => ['F', 'H', 'V', 'W', 'Y' ] ,
  5 => ['K' ] ,
  8 => ['J', 'X'] ,
  10 =>[ 'Q', 'Z' ]

}

class Scrabble


  attr_accessor :word

  def initialize (word)

    @word = word
    @score = 0

  end

  def getPoint(letter)

   point =  $scrabblepoint.key(letter)
   if point !=nil
     return point 
    else 
      return 0
    end
  end

  def letsPlay

      @word.chars.each do |letter|
      @score += getPoint(letter.upcase)
    end 

    puts " The total points for the word #{@word}  ::=> #{@score}"

  end

end 

scrabble = Scrabble.new "cabbage"
# binding.pry
scrabble.letsPlay


######## JAcks COde #############

# class Scrabble


#   attr_accessor :word

#   def initialize (word)

#     @word = word
#     @score = 0

#   end

#   def scores
#     {

#       "a" => 1, "b" => 3, "c" => 3, "d" => 2, "e" => 1,
#      "f" => 4, "g" => 2, "h" => 4, "i" => 1, "j" => 8,
#      "k" => 5, "l" => 1, "m" => 3, "n" => 1, "o" => 1,
#      "p" => 3, "q" => 10, "r" => 1, "s" =>1, "t" => 1,
#      "u" => 1, "v" => 4, "w" => 4, "x" => 8, "y" => 4,
#      "z" => 10

#     }

#   end
#   def score 
    #   sum =0
    #   @word.chars.each do|letter|
    #     sum +=scores[letter]
    #   end
    #   puts " The sum is #{sum}"

    # end

# end 






