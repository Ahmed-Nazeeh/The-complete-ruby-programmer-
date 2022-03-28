module Helpful
  FULL_MARK = 100
  def Helpful.tip
    puts "Perhaps you forgot to add question mark?"
  end
end

class Exam
  def validate(sentence)
    Helpful.tip unless sentence.include?("?")
  end
  def score(score_amount)
    "Congratulation, you got #{score_amount}/#{Helpful::FULL_MARK}"
  end
end

class Person
  def question(sentence)
    if sentence.include?("?")
      "what about #{sentence}"
    else
      Helpful.tip
  end
end
end

person1 = Person.new

puts person1.question "the numbew of birds in the sky"

exam = Exam.new
p exam.validate("hello")
p exam.score("80")
