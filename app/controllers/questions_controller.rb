class QuestionsController < ApplicationController
  def index
    @questions = Question.new
  end
end
