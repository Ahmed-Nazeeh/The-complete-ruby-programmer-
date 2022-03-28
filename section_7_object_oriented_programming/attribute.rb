class Person
  attr_accessor :first_name , :last_name

  def initialize(first_name , last_name)
    @first_name = first_name
    @last_name = last_name
  end
  # def first_name #getter = attr_reader or attr_accessor
  #   @first_name
  # end
  # def first_name=(first_name) #setter method = attr_writer attr_accessor
  #   @first_name = first_name
  # end
  # def last_name #getter
  #   @last_name
  # end
  def full_name
    "#{first_name} #{last_name}"
  end
end

person1 = Person.new("bob" , "smith")
p person1.first_name
p person1.full_name
person1.first_name = "peter"
puts person1.first_name
