magic_number = rand 3 

puts "Welcome to the guessing number game!"
puts
puts "Please enter a number between 0 and 3"

user_number = gets.chomp.to_i

if user_number > 3 
    puts "your number is too high!"
elsif user_number < 0
    puts "your number is to low!"
else
    message = "The magic number was #{magic_number}"
    if user_number == magic_number
        puts "You guessed right! #{message}"
    else
        puts "Wrong! Try again #{message}"
        user_number = gets.chomp.to_i 
        if user_number == magic_number
            puts "You guessed right! #{message}"
        else
            puts "Wrong!#{message}"
        end
    end
end