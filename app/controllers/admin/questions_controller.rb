class Admin::QuestionsController < ApplicationController

    def create
      @quiz = Quiz.includes(:questions).find(params[:quiz_id])
      @question = Question.new(question_params)
      @question.quiz = @quiz

      if @question.save
        redirect_to admin_quiz_path(@quiz)
      else
        flash[:alert] = "新建失败"
      end
    end
    def edit
      @quiz = Quiz.find(params[:quiz_id])
      @question = Question.find(params[:id])
    end

    def update
      @quiz = Quiz.find(params[:quiz_id])
      @question = Question.find(params[:id])
      @question.update(question_params)
      redirect_to admin_quiz_path(@quiz)

    end

    def destroy
      @quiz = Quiz.find(params[:quiz_id])
      @question = Question.find(params[:id])
      @question.destroy
      redirect_to admin_quiz_path(@quiz)
    end
    private

    def question_params
      params.require(:question).permit(:content, :answer_1,:answer_2,:answer_3,:answer_4,:answer_5,:answer_6,:is_a1en,
                                       :is_b1en,:is_c1en,:is_d1en,:is_e1en,:is_f1en, :imagea, :imageb, :imagec, :imaged,:imagee, :imagef)
    end
end
