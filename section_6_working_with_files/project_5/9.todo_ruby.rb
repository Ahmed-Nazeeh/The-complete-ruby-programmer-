not_exit = true

while not_exit do
  print "Please enter todo or exit: "
  input = gets.chomp

  if input == "exit"
    puts "thank you for using the app"
    not_exit = false
  else
    todo = "TODO: #{input}\n"

    File.open("todos.txt" , "a") do |file|
      file.write(todo)
end
end
end
