
class QuestionsController < ApplicationController
  def questions

  end

  def answer
    @answer = if params[:answer.downcase] == 'i am going to work right now!'
                'Great'
              elsif params[:answer.downcase].end_with?('?')
                'Silly question, get dressed and go to work!'
              else
                'I dont care, get dressed and go to work!'
              end
  end
end
