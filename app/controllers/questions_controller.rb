class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:banana]
    if @answer.downcase == "hello"
      @coach_answer = "Hey ! :)"
    elsif @answer.downcase == "what time is it?"
      @coach_answer = "it is" + Time.now
    else
      @coach_answer = "I'm not smart enough to answer"
    end
  end
end
