class Shape
  def is_shape?
    true
  end
end

class Quadrilatral
attr_accessor :side

  def initialize(side = 0)
    @side =side
  end

  def calculate_area
    side * side
  end
end

class Circle < Shape
attr_accessor :radius

  def initialize(radius = 0)
    @radius = radius
  end
  def calculate_area
    3.15 * radius * radius
  end
end

class Square < Quadrilatral;end

class Rectangular < Quadrilatral
attr_accessor :other_side

  def initialize(side,other_side)
    @other_side = other_side
    super(side)
  end

  def calculate_area
    other_side * side
  end
end

p Rectangular.new(5,6).calculate_area
p Square.new(5).calculate_area
p Circle.new(9).calculate_area
