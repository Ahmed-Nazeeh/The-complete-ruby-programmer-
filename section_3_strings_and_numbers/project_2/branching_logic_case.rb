puts "Please Enter today`s day"

today = gets.chomp 

case today.capitalize
when "Satrday"
    puts "it is the first day of the week"
when "Sunday"
    puts "It is Sunday"
when "Friday"
    puts "It is our vacation"
else
    puts "It is different day" 

end