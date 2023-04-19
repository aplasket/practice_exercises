require 'rspec'
require './lib/1practice.rb'

#  RSpec.describe '1practice' do
#   it "tests" do
#     prices = ["$2.50", 
#           "32.25$",
#           "3$.25",
#           "9.$50",
#           "75.98"]
#     refactored = []

#     prices.dollar_sign_remove
#   end

#   it "splits_string" do
#     sentence = "hi, happy first week of coding!"
#     sentence_array = []
#     transformed = []

#     split_string(sentence)
# require 'pry'; binding.pry
#     expect(sentence.captilaize_words).to eq(["Hi,", "happy", "First", "week", "Of", "coding!"])
#   end

#part one:
# RSpec.describe PhoneBook do
#   before(:each) do
#     @phonebook = PhoneBook.new({ "Adam": "555-1234", 
#     "Briona": "123-5555", 
#     "Charles": "424-0011",
#     "Tay": "625-8970",
#     "Mai": "424-8571"})
#   end

#   it 'exists' do
#     expect(@phonebook).to be_a(PhoneBook)  
#   end

#   it 'adds new entries' do
#     expect(@phonebook.add_entry("susie", "890-4562")).to eq("890-4562")
#     expect(@phonebook.entries).to eq({ "Adam": "555-1234", 
#                                 "Briona": "123-5555", 
#                                 "Charles": "424-0011",
#                                 "Tay": "625-8970",
#                                 "Mai": "424-8571", 
#                                 "susie": "890-4562"})
#   end
# end

## phonebook part 2: 
# RSpec.describe PhoneBook do
#   before(:each) do
#     @phonebook = PhoneBook.new({ "Adam": [555,1234], 
#                                 "Briona": [123,5555], 
#                                 "Charles": [424,0011],
#                                 "Tay": [625,8970],
#                                 "Mai": [424,8571]})
#   end

#   it 'exists' do
#     expect(@phonebook).to be_a(PhoneBook)  
#   end

#   it 'adds new entries' do
#     expect(@phonebook.add_entry("susie", [890,4562])).to eq([890,4562])
#     expect(@phonebook.entries).to eq({ "Adam": [555,1234], 
#                                         "Briona": [123,5555], 
#                                         "Charles": [424,0011],
#                                         "Tay": [625,8970],
#                                         "Mai": [424,8571], 
#                                         "susie": [890,4562]})
#   end

#   it 'can take a string name and return a formatted phone number' do
#     expect(@phonebook.formatted_phone("Adam")).to eq("555-1234")
#   end
# end


