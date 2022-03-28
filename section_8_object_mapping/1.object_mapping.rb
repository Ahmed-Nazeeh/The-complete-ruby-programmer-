#object_mapping = translating it to another format
# --------------------------------------------------
# require 'csv'
#
# class Person
#   attr_accessor :first_name , :last_name
#
# def valid?
#   (!first_name.nil? && first_name.length > 0) &&
#   (!last_name.nil? && last_name.length > 0)
# end
#
# def to_csv
#   CSV.generate do |csv|
#     csv << [first_name , last_name]
#   end
# end
# end
#
# person1 = Person.new
# person1.first_name = "bob"
# person1.last_name = "Thomdon"
#
# p person1.to_csv
# ---------------------------------------------------------------------------
#CRUD  = Create Read Update Delete
# --------------------------------
# class Person
# require 'csv'
#
# attr_accessor :first_name, :last_name, :person_id
# def valid?
#   (!first_name.nil? && first_name.length > 0) &&
#   (!last_name.nil? && last_name.length > 0)
# end
#
# def save
#   save_file = CSV.open("#{person_id}-file.csv" , "w") do |csv|
#     csv << [first_name , last_name]
#     end
#   return !save_file.nil?
#   end
# end
#
# person1 = Person.new
# person1.first_name = "bob"
# person1.last_name = "smith"
# person1.person_id='1001'
#
# puts person1.save
# ---------------------------------------------------------------------------
#Generating Unique IDs and Filenames
# --------------------------------
class Person
require 'csv'

attr_accessor :first_name, :last_name, :person_id

def initialize(first_name , last_name)
  @first_name = first_name
  @last_name  = last_name
  @person_id  = rand(1000..9999)
end
def valid?
  (!first_name.nil? && first_name.length > 0) &&
  (!last_name.nil? && last_name.length > 0)
end

def save
  filename = "#{person_id}-file.csv"
  save_file = CSV.open(filename , "w") do |csv|
    csv << [first_name , last_name]
    end
    puts "File #{filename} saved for employee with ID #{person_id}"
  return !save_file.nil?
  end
end

person1 = Person.new("AHMED","NAZEEH")

puts person1.save
