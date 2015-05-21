# Write a program that converts a number to a string per the following rules:

# If the number contains 3 as a prime factor, output 'Pling'. If the number contains 5 as a prime factor, output 'Plang'. If the number contains 7 as a prime factor, output 'Plong'.

# If the number does not contain 3, 5, or 7 as a prime factor, simply return the string representation of the number itself.



# def letsPlay(my_input)
  
#     return_val='' 
#     my_input = my_input.to_i
#     if my_input%3 == 0 
#       return_val += 'Pling'
#     end
#     if my_input%5 == 0
#         return_val +='Plang'
#     end
#     if my_input%7 == 0
#         return_val +='Plong'
#     end

#     if my_input%3 !=0 && my_input%5!=0 && my_input%7!=0
#          return_val = my_input
#     end 

#     return return_val
# end 

#   puts "Input any numeric value for Pling Plang Plong"
#     my_input = gets.chomp

#   puts "PlingPlangPlong for #{my_input} is #{letsPlay(my_input)}"


# Jacks Version 
# fetch the number from the user
# test if it  is divisible by 3
# test if it  is divisible by 5
# test if it  is divisible by 7
# Work with string 

def fetch_number
  print "what is your number ? "
  gets.chomp.to_i
end

def divisible_by_three? number
  number %3 ==0
end

def divisible_by_five? number
  number %5 ==0
end

def divisible_by_seven? number
  number %7 ==0
end

def convert_string
  number = fetch_number

  # approach 1 
  # if !divisible_by_three?(number) && !divisible_by_five?(number) && !divisible_by_seven?(number) 
  #   return number.to_s
  # end
  
    # approach 2
  not_divisible = divisible_by_three?(number) && divisible_by_five?(number) && divisible_by_seven?(number)
  if not_divisible || number <3
    return number.to_s
  end



  string =""
  string  +="Pling" if divisible_by_three? number
  string  +="Plang" if divisible_by_five? number
  string  +="Plong" if divisible_by_seven? number
  string

end

puts convert_string