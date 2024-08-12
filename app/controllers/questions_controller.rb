class QuestionsController < ApplicationController
  def ask
  end

  def answer
    question = params[:question]
    case question
    when 'I am going to work'
      @answer = 'Great'
    when 'I am going to work?'
      @answer = 'Silly question, get dressed and go to work!'
    when 'Hello'
      @answer = 'Hello'
    when 'What time is it?'
      @answer = Time.now
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
