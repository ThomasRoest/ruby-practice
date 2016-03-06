@questions = {
  question1: {id: 1, question: "what is your name", answer: "thomas"},
  question2: {id: 2, question: "what is your name", answer: "thomas"},
  question3: {id: 3, question: "what is your name", answer: "thomas"},
  question4: {id: 4, question: "what is your name", answer: "thomas"},
  question5: {id: 5, question: "what is your name", answer: "thomas"},
  question6: {id: 6, question: "what is your name", answer: "thomas"},
}


def compare_answer(answer, user_answer)
  if answer == user_answer
    @score += 1
     puts "hooray your score is #{@score}"
  else
    puts "nope, your score is #{@score}"
  end
end


def question(id)
@score = 0
  question = @questions.select{|key, hash| hash[:id] == id }
  question.each do |key, value|
    p value[:question]
    answer = value[:answer]

    user_answer = gets.chomp
    compare_answer(answer, user_answer)
  end
end


question(1)
question(2)
question(3)
question(4) 
question(5)
question(6)  
