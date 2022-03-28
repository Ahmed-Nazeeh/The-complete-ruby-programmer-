puts "Please enter the day!"
special_day = gets.chomp

today = "Wednesday"

if special_day.capitalize == today   
    puts "This is the special day!"
elsif special_day == "Monday"
    puts "It is Monday"
else
    puts "This is not the special day!"

end