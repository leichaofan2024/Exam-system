class Admin::QuizzesController < ApplicationController

  def index
    @quizzes = Quiz.all
  end
  def show
    @quiz = Quiz.find(params[:id])
    @question = Question.new
  end

  def new
    @quiz =Quiz.new
  end

  def create
    @quiz = Quiz.new(quiz_params)
    if @quiz.save
      redirect_to admin_quizzes_path
    else
      render :new
    end
  end

  def destroy
    @quiz = Quiz.find(params[:id])
    @quiz.destroy
    redirect_to admin_quizzes_path

  end
  private

  def quiz_params
    params.require(:quiz).permit(:title, :decription)
  end

end
