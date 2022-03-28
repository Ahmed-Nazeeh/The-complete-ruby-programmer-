# f = File.open "foo.txt"
#
#  another_file = File.open "bra.txt"
# puts another_file
# ---------------------------------------------------
# files Mode
# -----------
# f = File.open "foo.txt" , "r" #read only mode
# # f = File.open "foo.txt" , "w" "write to file"
# another_file = File.open "bar.txt" , "a" #use file with that name if not creat it
# puts another_file
# ---------------------------------------------------
# reading the content of file
# -----------
# f = File.open "foo.txt" , "r"
# puts f.read
# ---------------------------------------------------
# reading the content of file line by line
# -----------
# File.open("foo.txt" , "r").each do |line|
#   puts line
#   puts "--------------"
# end
# =============================
# File.open("foo.txt" , "r").each do |line|
#   puts line.chomp + "" + "-end of line"
# end
# ===================
# f = File.open "foo.txt" , "r"
# p f.readline
# p f.readline
# ---------------------------------------------------
# file closing
# -----------
# f = File.open "foo.txt" , "r"
# puts f.read
# f.close
# ---------------------------------------------------
# writing to existing file
# -----------
# 5.times do |i|
#     File.open("foo.txt" , "a") do |line|
#     line.write "write new line\n"
#    end
#  end
# ---------------------------------------------------
# writing to new file
# -----------
   #  File.open("bar.txt" , "a") do |line|
   #  line.write "write new line\n"
   # end
   # ---------------------------------------------------
   # writing user input to existing file
   # -----------
# f = File.open("bar.txt" , "a")
#
# 5.times do |line|
#    puts "please write some text"
#   x = gets.chomp
#   f.write "#{x}\n"
# end
#  f.close
# ---------------------------------------------------
# check if file exist
# ----------------------------------
puts "Enter file name"
file_name = gets.chomp

if File.exist?(file_name)
  f = File.open(file_name, "r")
  puts f.read
  f.close
else
  puts "file does not exist"
end
