require 'csv'

class Student

attr_accessor :first_name , :last_name , :student_id
attr_accessor :filename

    def initialize(first_name = "", last_name = "", student_id = rand(1000..9999))
      @first_name = first_name
      @last_name = last_name
      @student_id = student_id
      @filename = "#{student_id}-file.csv"
    end
#==================MAIN===========================
    def main_setup
      puts "Welcome to the student registration system!"
      43.times {print "="}
      puts
      puts "Your menu options are:"
      puts
      puts "Enter 1 to create new registration"
      puts "Enter 2 to update new registration"
      puts "Enter 3 to delete new registration"
      puts "Enter exit to exit new registration"
      puts
      puts "Please enter your selection:"
      student_input = gets.chomp

      case student_input.downcase
        when "1"
          create
        when "2"
          update
        when "3"
          destroy
        when "exit"
          abort "Thanks for using the program"
      end
    end
# ===========================================================
    def self.filename(student_id)
      "#{student_id}-file.csv"
    end
# ====================VALIDATION=========================
    def valid?
      if (!first_name.nil? && first_name.length > 0) &&
         (!last_name.nil?  && last_name.length > 0)
        return true
      else
        print "Person attributes not valid."
      end
    end
#===================USER_INPUT=======================
    def user_input
      puts
      puts "Please enter a first name:"
      @first_name = gets.chomp
      puts "Please enter a last name:"
      @last_name = gets.chomp
    end
#==================CREATE===========================
    def create
      puts "You have choosen to create a new registration"
      user_input
      save
    end
#======================READ==========================
    def self.read(student_id)
      filename = Student.filename student_id
      if File.exist?(filename, 'r') do |file|
              record = CSV.parse(file.read)[0]
              return Student.new(record[0],record[1],student_id)
              end
      else
        puts "Student record does not exist"
      end
    end
#=======================UPDATE===========================
    def update
      puts "Please put student id"
      @filename = gets.chomp
      if File.exist?(filename)
        user_input
        save
      else
        puts "File does not exist, update can not be performed"
        return false
      end
    end
#========================DELETE===============================
    def destroy
      puts "Please put student id"
       filename = gets.chomp
      # filename = Student.filename student_id
      if File.exist?(filename)
        File.delete(filename)
        puts "File has been deleted"
        return true
      else
        puts "Person record does not exist"
        false
      end
    end
#=========================SAVE==================================
    def save
      unless valid?
        puts "can not save file"
      end
      save_file = CSV.open(filename, "w") do |csv|
                  csv << [first_name, last_name]
                  end
    puts "File #{filename} saved for employee with ID #{student_id}"
    return !save_file.nil?
    end
# ===============================================================
end

student1 = Student.new
student1.main_setup
