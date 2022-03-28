#duck typing ruby dynamic language

class Person
  def reverse
    "reverse message"
  end
end

  def check_it(obj)
    obj.respond_to?(:reverse)
  end

puts check_it(2)

puts check_it(Person.new)
#
puts check_it("Somthing")
#
puts check_it([1,2,3])
