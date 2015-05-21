# DNA is represented by an alphabet of the following symbols: 'A', 'C', 'G', and 'T'.
# Each symbol represents a nucleotide, which is a fancy name for the particular molecules that happen to make up a large part of DNA.

# There are 5 types of nucleotides. 4 of these occur in DNA: A, C, G, and T. 4 occur in RNA: A, C, G, U.

# There are no other nucleotides.

# Make sure that you validate it has nucleotides!

# Find how many of each nucleotides are in a string that you pass in to a function

# def fetch_input 

#   print " Enter any string "
#   gets.chomp
# end

# def check_nucleotide(my_input)

#    countA = my_input.count("A")
#    countC = my_input.count("C")
#    countG = my_input.count("G")
#    countT = my_input.count("T")
#    countU = my_input.count("U")

#    puts "#{my_input} Contains the following nucleotide letters "
#    puts " A : #{countA}"
#    puts " C : #{countC}"
#    puts " G : #{countG}"
#    puts " T : #{countT}"
#    puts " U : #{countU}"

# end

# my_string = fetch_input
# check_nucleotide(my_string.upcase)


def valid_nucleotide?(char)
  
  %W[ A T C G U].include? char

end


def count(nucleotide,char)

  if valid_nucleotide? char
    nucleotide.count char
  else
    puts "Wrong Input"
    0 # returns 0
  end
end



def nucleotide_counts(nucleotide)

  {

  :a => count(nucleotide ,"A"),
  :c => count(nucleotide ,"C"),
  :t => count(nucleotide ,"T"),
  :g => count(nucleotide ,"G")
}
end

puts nucleotide_counts "ATCG"