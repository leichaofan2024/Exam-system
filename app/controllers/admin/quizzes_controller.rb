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
    @products = Product.all.map{|a| [a.title,a.id]}
  end

  def create
    @quiz = Quiz.new(quiz_params)

    if @quiz.save
      redirect_to admin_quizzes_path
    else
      render :new
    end
  end
  def edit
    @products = Product.all.map{|a| [a.title,a.id]}
    @quiz = Quiz.find(params[:id])
  end

  def update
    @quiz = Quiz.find(params[:id])
    @quiz.update(quiz_params)
    redirect_to admin_quizzes_path
  end


  def destroy
    @quiz = Quiz.find(params[:id])
    @quiz.destroy
    redirect_to admin_quizzes_path

  end
  private

  def quiz_params
    params.require(:quiz).permit(:title, :description,:product_id )
  end

end
