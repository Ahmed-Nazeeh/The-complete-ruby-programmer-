# not_exit = true
# contact = []

# while not_exit do 

#     print "Please enter a contact name or exit to exit: "
#     input = gets.chomp
#     if input == "exit"
#         not_exit = false
#         puts "You chose to exit program"
#     break
#     else
#         x = {name: input}
#     end

#     print "Please enter a contact phone: "
#     input = gets.chomp 
#     if input == "exit"
#         not_exit = false
#         puts "You chose to exit program"
#     break
#     else
#         y = {phone: input}
#         z = x.merge(y)
#         contact.push(z)
#         if z[:name] == "Ahmed" || z[:phone] == "123456789"
#             puts "You found me!"
#         end
#     end 
# end

# p contact

# ----------------------------------------------------------------

not_exit = true
contacts = []

while not_exit do 
    print " Please enter a contact name or exit to exit: "

    input = gets.chomp 

    if(input == "exit")
        puts "You chose to exit the program"
        not_exit = false
    else
        print "Please enter a contact phone: "
        phone_input = gets.chomp 
        contacts.push({name: input, phone: phone_input}) 
    end
end

contacts.each do |contact|
    if contact[:name] == "Ahmed"
        puts "I found me!"
    end
end

p contacts