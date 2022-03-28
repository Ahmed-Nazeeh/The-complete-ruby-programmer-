require_relative 'helpful-mod'
class Person

  def question(sentence)
    if sentence.include?("?")
      p "what about #{sentence}"
    elsif sentence.include?("!")
      p Helpful::FULL_MARK
    else
       Helpful.tip
  end
end
end
person1 = Person.new
 person1.question("are u okay ?")
