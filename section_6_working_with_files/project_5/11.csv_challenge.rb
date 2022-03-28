require 'csv'
arr = []
print "please enter the student name: "
input = gets.chomp
arr << input
print "please enter the student age: "
input = gets.chomp
arr << input
# p arr

CSV.open("10.csv_challenge_data.csv" , "a") do |csv|
    csv << arr
 end

p "thank you the record has been added to the file"
