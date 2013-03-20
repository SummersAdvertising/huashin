#encoding: utf-8
class QuestionAnswer < ActionMailer::Base
  default from: "from@example.com"
  def send_answer(question, answer)
  	@question = question
  	@answer = answer

  	mail(:to => [@question.email, "kobanae@gmail.com"],
  	     :subject => "[華新果園]#{@question.askerName}, 周先生已回覆您的留言")  	
  end
end