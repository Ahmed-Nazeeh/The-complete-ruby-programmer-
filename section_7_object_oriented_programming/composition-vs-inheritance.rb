class Shape
  def name
  puts self.class
end
end

module Premiter
  def calculate(s1,s2)
  2*(s1+s2)
end
end
class Square < Shape
  include Premiter
end

class Rectangular < Shape
  include Premiter
end

class Circle < Shape

  def calculate(r)
      p = 3.14
     (2 * p * r)
end
end

square = Square.new
circle = Circle.new
rectangular = Rectangular.new

square.name
p square.calculate(5,5)
p rectangular.calculate(6,6)
p circle.calculate(10)
