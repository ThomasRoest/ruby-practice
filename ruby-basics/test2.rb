class Censor
  attr_reader :string, :questions
  def initialize(string)
    @string = string
    @questions = {:one => "who are you?",
                  :two => "Where do you live?"}
  end

  def check_fuck
    if string.include?('fuck')
      string.gsub!('fuck', "NOPE")
      return string
    end
  end

  def check_shit
    if string.include?('shit')
      string.gsub!('shit', "nope nope")
    end
  end

  def question1
    return questions[:one]
  end

  def question2
    return questions[:two]
  end
end


test_string = "this is a fucking test shit string"


censor_object = Censor.new(test_string)

p censor_object.check_fuck

p censor_object.question2