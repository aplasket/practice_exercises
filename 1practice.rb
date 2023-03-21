
def reverse(string)
  string.reverse
end

p reverse("world")
p reverse("H3ll0 W-rld!")
p reverse("My n@me is @$hl3y!")


# def reverse_2(string)
#   split_string = string.split("")
#   reversed =  []
#   split_string.each {|char| reversed.unshift(char)}
#   reversed_string = reversed.join
# end
# p reverse_2("I will REverse THIS sting!")

def reverse_2(string)
  reversed =  []
  string.split("").each {|char| reversed.unshift(char)}
  reversed.join
end
p reverse_2("I will REverse THIS sting!")