#Reading Objects from File
# -------------------------------- with 2.1.runner.rb using
# class Person
# require 'csv'
#
# attr_accessor :first_name, :last_name, :person_id
#
# def initialize(first_name , last_name , person_id = rand(1000..9999))
#   @first_name = first_name
#   @last_name  = last_name
#   @person_id  = person_id
# end
# def valid?
#   (!first_name.nil? && first_name.length > 0) &&
#   (!last_name.nil? && last_name.length > 0)
# end
#
#   def self.read(person_id)
#     filename = "#{person_id}-file.csv"
#     if File.exist?(filename)
#       File.open(filename, 'r') do |file|
#         record = CSV.parse(file.read)[0]
#       return Person.new(record[0] , record[1] , person_id)
#       p record
#       end
#     else
#       puts "Person recors does not exist"
#     end
#   end
#   def save
#     filename = "#{person_id}-file.csv"
#     save_file = CSV.open(filename , "w") do |csv|
#       csv << [first_name , last_name]
#       end
#       puts "File #{filename} saved for employee with ID #{person_id}"
#     return !save_file.nil?
#     end
# end
# ------------------------------------------------------------------------------
# updating object in File
# -------------------------------- with 2.1.runner.rb using
# class Person
# require 'csv'
#
# attr_accessor :first_name, :last_name, :person_id
# attr_reader :filename
#
# def initialize(first_name , last_name , person_id = rand(1000..9999))
#   @first_name = first_name
#   @last_name  = last_name
#   @person_id  = person_id
#   @filename   = "#{person_id}-file.csv"
# end
#
# def self.filename(person_id)
#   "#{person_id}-file.csv"
# end
#
# def valid?
#   (!first_name.nil? && first_name.length > 0) &&
#   (!last_name.nil? && last_name.length > 0)
# end
#
# def create
#   if !File.exist?(filename)
#     save
#   else
#     puts "Can not create file.File #{filename}already exists for #{person_id}"
#     return false
#   end
# end
#
# def update
#   if File.exist?(filename)
#     save
#   else
#     puts "File doesnot exist, update can not be perfoemed"
#     return false
#   end
# end
#
#   def self.read(person_id)
#      filename = Person.filename person_id
#     if File.exist?(filename)
#       File.open(filename, 'r') do |file|
#         record = CSV.parse(file.read)[0]
#       return Person.new(record[0] , record[1] , person_id)
#       end
#     else
#       puts "Person record does not exist"
#     end
#   end
#
#   def save
#     save_file = CSV.open(filename , 'w') do |csv|
#       csv << [first_name , last_name]
#       end
#       puts "File #{filename} saved for employee with ID #{person_id}"
#     return !save_file.nil?
#     end
# end
# ------------------------------------------------------------------------------
# # delete File
# # -------------------------------- with 2.1.runner.rb using
# class Person
# require 'csv'
#
# attr_accessor :first_name, :last_name, :person_id
# attr_reader :filename
#
# def initialize(first_name , last_name , person_id = rand(1000..9999))
#   @first_name = first_name
#   @last_name  = last_name
#   @person_id  = person_id
#   @filename   = "#{person_id}-file.csv"
# end
#
# def self.filename(person_id)
#   "#{person_id}-file.csv"
# end
#
# def valid?
#   (!first_name.nil? && first_name.length > 0) &&
#   (!last_name.nil? && last_name.length > 0)
# end
#
# def create
#   if !File.exist?(filename)
#     save
#   else
#     puts "Can not create file.File #{filename}already exists for #{person_id}"
#     return false
#   end
# end
#
# def update
#   if File.exist?(filename)
#     save
#   else
#     puts "File doesnot exist, update can not be perfoemed"
#     return false
#   end
# end
#
#   def self.read(person_id)
#      filename = Person.filename person_id
#     if File.exist?(filename)
#       File.open(filename, 'r') do |file|
#         record = CSV.parse(file.read)[0]
#       return Person.new(record[0] , record[1] , person_id)
#       end
#     else
#       puts "Person record does not exist"
#     end
#   end
#
#   def self.destroy(person_id)
#     filename = Person.filename person_id
#     if File.exist?(filename)
#       File.delete(filename)
#       puts "file has been deleted"
#       return true
#     else
#       puts "Person record does not exist"
#       false
#     end
#   end
#   def save
#     save_file = CSV.open(filename , 'w') do |csv|
#       csv << [first_name , last_name]
#       end
#       puts "File #{filename} saved for employee with ID #{person_id}"
#     return !save_file.nil?
#     end
# end
# ---------------------------------------------------------------------------------
# Validation
# -------------------------------- with 2.1.runner.rb using
class Person
require 'csv'

attr_accessor :first_name, :last_name, :person_id
attr_reader :filename

def initialize(first_name , last_name , person_id = rand(1000..9999))
  @first_name = first_name
  @last_name  = last_name
  @person_id  = person_id
  @filename   = "#{person_id}-file.csv"
end

def self.filename(person_id)
  "#{person_id}-file.csv"
end

def valid?
    if (!first_name.nil? && first_name.length > 0) &&
       (!last_name.nil? && last_name.length > 0)
       return true
    else
       Print "Person attributes not valid."
  end
end

def create
  if !File.exist?(filename)
    save
  else
    puts "Can not create file.File #{filename}already exists for #{person_id}"
    return false
  end
end

def update
  if File.exist?(filename)
    save
  else
    puts "File doesnot exist, update can not be performed"
    return false
  end
end

def self.destroy(person_id)
  filename = Person.filename person_id
  if File.exist?(filename)
    File.delete(filename)
    puts "file has been deleted"
    return true
  else
    puts "Person record does not exist"
    false
  end
end

  def self.read(person_id)
     filename = Person.filename person_id
    if File.exist?(filename)
      File.open(filename, 'r') do |file|
        record = CSV.parse(file.read)[0]
      return Person.new(record[0] , record[1] , person_id)
      end
    else
      puts "Person record does not exist"
    end
  end


  def save
    unless valid?
      puts "Can not save file."
    end
    save_file = CSV.open(filename , 'w') do |csv|
      csv << [first_name , last_name]
      end
      puts "File #{filename} saved for employee with ID #{person_id}"
    return !save_file.nil?
  end
end
