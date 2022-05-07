class Admin::QuestionsController < ApplicationController
  before_action :get_question, only: %i[show edit update destroy]

  def index ;end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to admin_questions_path, success: t('.success')
    else
      flash.now[:danger] = t('.fail')
      render new
    end
  end

  def show ;end

  def edit ;end

  def update
  end

  def destroy
  end

  private

  def question_params
    params.require(:question).permit(:title, :body)
  end

  def get_question
    @question = Question.find(params[:id])
  end
end
