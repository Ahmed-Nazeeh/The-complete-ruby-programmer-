print "Please enter a number greater than 10: "

user_input = gets.chomp.to_i 

if user_input > 10 
    puts "Thank you~ That is a number greater than 10"
elsif user_input < 10 && user_input > 0
    puts "That is not a number greater than 10"
else
    puts "You either entered 0 or some non_numeric-input"
end
