# class Person
#   def initialize(first_name = "",last_name = "")
#     @first_name = first_name
#     @last_name = last_name
#   end
#
#   def say_my_name
#     puts "my name is #{@first_name} #{@last_name}"
#   end
# end
#
# ahmed = Person.new#("ahmed" , "nazeeh")
# ahmed.say_my_name
#
# muhamed = Person.new("muhamed", "hassan")
# muhamed.say_my_name
# --------------------------------------------------------------------
#comparing objects
# ---------------------
# class Person
#   def initialize(first_name = "",last_name = "")
#     @first_name = first_name
#     @last_name = last_name
#   end
# def first_name
#  @first_name
# end
#
# def last_name
#   @last_name
# end
#   def say_my_name
#     puts "my name is #{@first_name} #{@last_name}"
#   end
#   def ==(other)
#     (@first_name == other.first_name) && (@last_name ==other.last_name)
#   end
# end
#
# a = Person.new("foo", "bar")
# b = Person.new("foo", "bar")
#
# p a
# p b
# p a == b
# --------------------------------------------------------------------
#comparing objects
# ---------------------
class Person
  def initialize(first_name = "",last_name = "")
    @first_name = first_name
    @last_name = last_name
  end
def first_name
 @first_name
end

def last_name
  @last_name
end
  def describe_self
    p self.class
  end

  def say_my_name
    puts "my name is #{@first_name} #{@last_name}"
  end
  def ==(other)
    (@first_name == other.first_name) && (@last_name ==other.last_name)
  end
end

a = Person.new("foo", "bar").describe_self
b = Person.new("foo", "bar")
