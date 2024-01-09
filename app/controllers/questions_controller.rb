class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answers = ['Great!', 'Silly question, get dressed and go to work!', 'I dont care, get dressed and go to work!']
    answer_param = params[:answer]

    if answer_param.nil? || answer_param.empty?
      @answer = 'Please enter a question.'
    elsif answer_param.include?("?")
      @answer = @answers[1]
    elsif answer_param.include?("I am going to work")
      @answer = @answers[0]
    else
      @answer = @answers[2]
    end
  end
end
