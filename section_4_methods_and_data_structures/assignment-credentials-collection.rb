not_exit = true
credentials = {}

while not_exit do 
puts "Please enter a site name (enter exit to exit): "
input_site = gets.chomp
    if input_site == "exit"
        puts "Exiting...Your list of credentials is"
        puts credentials
        not_exit = false 
    else
        print "Pleae enter a username: "
        input_username = gets.chomp 
        print "Pleae enter a password: "
        input_password = gets.chomp 
        credentials.merge!(site: input_site, username: input_username, password: input_password)
    end

 puts "\nThank you!"
end