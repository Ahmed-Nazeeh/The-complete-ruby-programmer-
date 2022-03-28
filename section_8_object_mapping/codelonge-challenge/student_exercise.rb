require 'csv'
class Student
attr_accessor :first_name , :last_name , :age
  def initialize(first_name , last_name , age)
    @first_name = first_name
    @last_name  = last_name
    @age        = age
  end

  def student_full_name_is
    puts "The student full name is #{first_name} #{last_name} and his age is 18."
  end

  def save
    File.open('student_directory.csv' , 'a') do |csv|
      csv.write(self.to_csv)
    end
  end
  def to_csv
    CSV.generate do |csv|
      csv << [first_name , last_name , age]
    end
 end
end

 ahmed = Student.new("Ahmed" , "Nazeeh" , "18")
 ahmed.save
