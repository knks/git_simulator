class Admin::QuestionsController < ApplicationController
  before_action :get_question, only: %i[show edit update destroy]
  before_action :require_login

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to admin_questions_path, success: t('.success')
    else
      flash.now[:danger] = t('.fail')
      render :new
    end
  end

  def show ;end

  def edit ;end

  def update
    if @question.update(question_params)
      redirect_to admin_questions_path, success: t('.success')
    else
      flash.now[:danger] = t('.fail')
      render :edit
    end
  end

  def destroy
    @question.destroy!
    redirect_to admin_questions_path, success: t('.success')
  end

  private

  def question_params
    params.require(:question).permit(:title, :body)
  end

  def get_question
    @question = Question.find(params[:id])
  end
end
