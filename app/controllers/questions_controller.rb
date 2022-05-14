class QuestionsController < ApplicationController
  before_action :get_question, only: %i[show]
  skip_before_action :require_login, only: %i[index show]

  def index
    @questions = Question.all
  end

  def show ;end

  private

  def get_question
    @question = Question.find(params[:id])
  end
end
