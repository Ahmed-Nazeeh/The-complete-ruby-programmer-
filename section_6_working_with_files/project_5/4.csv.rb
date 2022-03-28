require 'csv'
# 4 csv_from_file = CSV.read("5.data.csv")

# csv_string = "ahmed,engineer,great,pizza"
# parsed_string = CSV.parse(csv_string)
#  p parsed_string

 season_and_months = ["spring" , "autmun" , "june" , "july"]
# CSV.open("5.data.csv" , "a") do |csv|
#   csv << season_and_months
# end

some_string = CSV.generate do |csv| #converte array to string
  csv << season_and_months
end
p some_string
