class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = ''
    @message = params[:input]
    if params[:input].include?("?")
      @answer = "Silly question, get dressed and go to work!"
    elsif params[:input] == "I am going to work"
      @answer = "Great!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
