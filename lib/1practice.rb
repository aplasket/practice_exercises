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

prices = ["$2.50", 
          "32.25$",
          "3$.25",
          "9.$50",
          "75.98"]
refactored = []

 refactored = prices.map do |price|
    price.delete! "$"
    "$%05.2f" % price
  end

