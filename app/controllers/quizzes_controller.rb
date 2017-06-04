class QuizzesController < ApplicationController
  before_action :authenticate_user!
  def index
    @quizzes = Quiz.all
    if params[:product_id].present?
      @quizzes = Quiz.all.where(:product_id => params[:product_id].to_i)
    end
  end


  def show
    @quiz = Quiz.includes(:questions).find(params[:id])
    @questions = @quiz.questions
   #Text = Exam.create(quiz_id: @quiz.id, user_id: current_user.id )

    #@exam = Text.last
    @exam = Exam.includes(:answers).where(quiz_id: @quiz.id, user_id: current_user.id )
          .order("id desc")
          .first_or_create(quiz_id: @quiz.id)
    @answers = @exam.answers
  end

  def exam_records
    @quiz = Quiz.find(params[:id])
    @questions = @quiz.questions
    @exam = current_user.exams.find_by(quiz_id: @quiz.id)
  end



end
