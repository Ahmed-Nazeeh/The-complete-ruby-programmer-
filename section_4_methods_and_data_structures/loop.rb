# a = 0 

# loop do 
# a = a + 1
#     puts a 
# end
# -------------------------------------

# a = 20

# while a >= 5 do 
#     a -= 1 
#     puts a 
# end
# puts "After the loop"
# -----------------------------------------

# begin
    
#     puts "Please guess color?"
#     choice = gets.chomp
# end while choice != "Red"

# puts " You have chosed correctly"
# ---------------------------------------------

loop do
    
    puts "Please enter somthing"
    choice = gets.chomp
    if choice == 'exit'
        break
    end
end 
