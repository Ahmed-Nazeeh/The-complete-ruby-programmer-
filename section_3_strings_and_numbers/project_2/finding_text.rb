# puts "Please enter some information"

# user_input = gets.chomp 

# if user_input.include? "name"
#     puts "The user enterd thier name..."
# else
#     puts "The user did not enterd name!!!"
# end
# -------------------Finding text - index------------------------------------
puts "Please enter some information"

user_input = gets.chomp 

user_input_index = user_input.index("name")

if user_input_index != nil 
    if user_input_index == 0 
        puts "Found it at the biginning with index #{user_input_index}"
    else
        puts "Found it at somwhere else! with index #{user_input_index}"
    end
else
    puts "dont found it"
end