class AnswersController < ApplicationController
  def set_answer_1_status
     @answer = Answer.new(question_id: params[:question_id], exam_id: params[:exam_id], is_aa1en: params[:is_aa1en])

     @answer.save
     redirect_to :back
  end

  def set_answer_2_status
     @answer = Answer.new(question_id: params[:question_id], exam_id: params[:exam_id], is_bb1en: params[:is_bb1en])

     @answer.save
     redirect_to :back
  end

  def set_answer_3_status
     @answer = Answer.new(question_id: params[:question_id], exam_id: params[:exam_id], is_cc1en: params[:is_cc1en])

     @answer.save
     redirect_to :back
  end

  def set_answer_4_status
     @answer = Answer.new(question_id: params[:question_id], exam_id: params[:exam_id], is_dd1en: params[:is_dd1en])

     @answer.save
     redirect_to :back
  end
end
