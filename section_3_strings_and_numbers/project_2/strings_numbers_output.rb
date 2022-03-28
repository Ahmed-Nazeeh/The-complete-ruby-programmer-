random_number = rand(1..10)

print "Please Enter number: "

user_input = gets.chomp 

result = user_input.to_f / random_number.to_f

puts "The result of dividing #{user_input} by #{random_number} = #{result}"