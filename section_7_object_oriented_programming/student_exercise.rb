class Student
attr_accessor :first_name , :last_name
  def initialize(first_name , last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def student_full_name_is
    puts "The student full name is #{first_name} #{last_name} and his age is 18."
  end
end

ahmed = Student.new("Ahmed" , "Nazeeh")
ahmed.student_full_name_is
