class AnswersController < ApplicationController
  def set_answer_1_status
     @answer = Answer.new(question_id: params[:question_id], exam_id: params[:exam_id], is_aa1en: params[:is_aa1en])
     @answer.save
     @question = @answer.question
     @quiz = Quiz.find(@question.quiz_id.to_i)
     @exam = Exam.includes(:answers).where(quiz_id: @quiz.id, user_id: current_user.id )
           .order("id desc")
           .first_or_create(quiz_id: @quiz.id)
     @questions = @quiz.questions
  end

  def set_answer_2_status
     @answer = Answer.new(question_id: params[:question_id], exam_id: params[:exam_id], is_bb1en: params[:is_bb1en])
     @answer.save
     @question = @answer.question
     @quiz = Quiz.find(@question.quiz_id.to_i)
     @exam = Exam.includes(:answers).where(quiz_id: @quiz.id, user_id: current_user.id )
           .order("id desc")
           .first_or_create(quiz_id: @quiz.id)
     @questions = @quiz.questions
     render :set_answer_1_status
  end

  def set_answer_3_status
     @answer = Answer.new(question_id: params[:question_id], exam_id: params[:exam_id], is_cc1en: params[:is_cc1en])
     @answer.save
     @question = @answer.question
     @quiz = Quiz.find(@question.quiz_id.to_i)
     @exam = Exam.includes(:answers).where(quiz_id: @quiz.id, user_id: current_user.id )
           .order("id desc")
           .first_or_create(quiz_id: @quiz.id)
     @questions = @quiz.questions
     render :set_answer_1_status
  end

  def set_answer_4_status
     @answer = Answer.new(question_id: params[:question_id], exam_id: params[:exam_id], is_dd1en: params[:is_dd1en])
     @answer.save
     @question = @answer.question
     @quiz = Quiz.find(@question.quiz_id.to_i)
     @exam = Exam.includes(:answers).where(quiz_id: @quiz.id, user_id: current_user.id )
           .order("id desc")
           .first_or_create(quiz_id: @quiz.id)
     @questions = @quiz.questions
     render :set_answer_1_status
  end
end
