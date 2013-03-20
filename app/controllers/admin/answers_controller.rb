class Admin::AnswersController < ApplicationController
  layout 'admin'
  
  def edit
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new(params[:answer])

    respond_to do |format|
      @answer.save

      QuestionAnswer.send_answer(@question, @answer).deliver
      
      format.html { redirect_to admin_question_path(params[:question_id]) }
    end
  end

  def update
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])

    respond_to do |format|
      if @answer.update_attributes(params[:answer])
        format.html { redirect_to admin_question_path(params[:question_id]), notice: 'Answer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])
    @answer.destroy

    respond_to do |format|
      format.html { redirect_to admin_question_path(params[:question_id]), notice: 'Answer was deleted.'}
      format.json { head :no_content }
    end
  end
end
