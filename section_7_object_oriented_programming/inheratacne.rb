# class Animal
#   def breath
#   end
#
#   def move
#     "can be"
#   end
#
#   def eat
#   end
# end
#
# class Dog < Animal
#   def has_tail?
#     return true
#   end
# end
#
# class Bear < Animal
#   def has_wool?
#     return false
#   end
# end
#
# dog = Dog.new
# p dog.has_tail?
#
# bear = Bear.new
# p bear.move
# ------------------------------------------------------------------------------
class Animal
  def breath
    "iam super class"
  end
end

class Dog < Animal
  def breath
    "breath"
    super
  end
end

dog = Dog.new
p dog.breath
