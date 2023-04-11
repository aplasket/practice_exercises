#Practice 1:
# def reverse(string)
#   string.reverse
# end

# def reverse_2(string)
#   reversed =  []
#   string.split("").each {|char| reversed.unshift(char)}
#   reversed.join
# end
# p reverse_2("I will REverse THIS sting!")


#alternative method thoughts
# def reverse_2(string)
#   split_string = string.split("")
#   reversed =  []
#   split_string.each {|char| reversed.unshift(char)}
#   reversed_string = reversed.join
# end
# p reverse_2("I will REverse THIS sting!")

# ---------------- 
# Practice 2:

# prices = ["$2.50", 
#           "32.25$",
#           "3$.25",
#           "9.$50",
#           "75.98"]
# refactored = []

#  refactored = prices.map do |price|
#     price.delete! "$"
#     "$%05.2f" % price
#   end


#Sentence Array: Write a method that adds each word of a sentence to an array. 
#Then, capitalize every other word in the sentence. Return the new sentence.

#- Example:
    
 #   "The quick brown fox jumps over the lazy dog." ["The", "quick", "brown" …]
    
  #  => "The quick Brown fox Jumps over The lazy Dog."
   
# - Extensions:
#     - Use a sentence with other capital letters in it. The method should still capitalize every alternate word, regardless of other capitalization.
#     - Use a sentence with special characters, spaces, etc. Does your method still work?
#     - Refactor your solution to keep your main method under 5 lines. Use helper methods.
#     - Write a test suite to prove that your solution works.

# def capitalize_every_other_word
#   sentence_array = sentence.split(' ')
#   sentence_array.each do |word|
#     if sentence_array.index(word) % 2 == 0
#       word.capitalize!
#     end
#   end
#   transformed = sentence_array.join(" ")
# end

# #perhaps try with index(0) or index.even? if index % 2 == 0, word.upcase, end

# # def capitalize_words(string)
# #  sentence.split.map(&:capitalize).join(' ')
# # end

#Hash Practice 1: Using the two hashes below, 
#write a method that takes a state name ("Oregon") and 
#outputs its abbreviation ("OR"). 

#(For extra practice, write another method that takes a 
#state abbreviation ("OR") and outputs its capital ("Salem").)

#Then, write a method that takes a state name ("Oregon"), 
#and returns its capital ("Salem").





# def state_abbreviation(state)
#   states = {"Oregon" => "OR",
#           "Alabama" => "AL",
#           "New Jersey" => "NJ",
#           "Colorado" => "CO"}

#   states[state]
# end

# def state_capital(state_abbv)
#   capitals = {"OR" => "Salem",
#   "AL" => "Montgomery",
#   "NJ" => "Trenton",
#   "CO" => "Denver"}

#   capitals[state_abbv]
# end

# def call_capital_from_state(state)
#   states    = {"Oregon" => "OR",
#             "Alabama" => "AL",
#             "New Jersey" => "NJ",
#             "Colorado" => "CO"}

#   capitals  = {"OR" => "Salem",
#             "AL" => "Montgomery",
#             "NJ" => "Trenton",
#             "CO" => "Denver"}

#   capitals[states[state]]
# end

# def get_state_name (state_capital)
#   states    = {"Oregon" => "OR",
#               "Alabama" => "AL",
#               "New Jersey" => "NJ",
#               "Colorado" => "CO"}

#   capitals  = {"OR" => "Salem",
#               "AL" => "Montgomery",
#               "NJ" => "Trenton",
#               "CO" => "Denver"}

#   states.invert[capitals.invert[state_capital]]

# end
# # p state_abbreviation("Oregon")
# # p state_capital("OR")
# # p call_capital_from_state("Oregon")
# p get_state_name("Trenton")


#Hash Phonebook (Part 1): Create a phonebook using a hash! 
#Your book/hash should have least 5 different people's phone numbers.
# class PhoneBook
#   attr_reader :entries
#   def initialize(entries)
#     @entries = entries
#   end
  
#   def add_entry(name, phone_number)
#     @entries[name.to_sym] = phone_number
#   end
  
# end
    
#Hash Phonebook PART DEUX: 
#Create a phonebook using a hash! 
#Your book/hash should have least 5 different people's phone numbers. 
#The phone numbers should be represented by **arrays**.
#Ex: phonebook = {"Adam": [555, 1234], "Briona": [123, 5555], "Charles": …}
#Then, write a method that adds a new entry to your phonebook.
#Ex: add_number("Name", [419, 5540])
#Finally, write a method that takes a string name, 
#and returns a formatted phone number.Ex: call("Adam") => "555-1234"
class PhoneBook
  attr_reader :entries
  def initialize(entries)
    @entries = entries
  end
  
  def add_entry(name, phone_number)
    @entries[name.to_sym] = phone_number
  end

  def formatted_phone(name)
    if @entries.has_key?(name.to_sym)
      string_nums = @entries[name.to_sym].map do |number| 
        number.to_s
      end
      string_nums.join("-")
    end
  end
end