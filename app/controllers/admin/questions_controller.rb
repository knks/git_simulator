class Admin::QuestionsController < ApplicationController
  before_action :get_question, only: %i[show edit update destroy]
  before_action :require_login

  def index
    @questions = Question.all
  end

  def new
    @resister_quiz_form = ResisterQuizForm.new
  end

  def create
    @resister_quiz_form = ResisterQuizForm.new(question_params)
    if @resister_quiz_form.save
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
    params.require(:resister_quiz_form).permit(
      :question_title,
      :question_body,
      :correct_choice,
      :incorrect_choice_1,
      :incorrect_choice_2,
      :incorrect_choice_3
    )
  end

  def get_question
    @question = Question.find(params[:id])
  end
end
