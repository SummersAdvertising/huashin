class Admin::QuestionsController < ApplicationController
  before_filter :require_is_admin
  layout 'admin'
  

  def index
    @questions = Question.order('created_at DESC').page(params[:page]).per(10)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @questions }
    end
  end

  def show
    @question = Question.find(params[:id])
    @answer = @question.answers.new
    @answered = @question.answers.all
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy

    respond_to do |format|
      format.html { redirect_to admin_questions_path }
      format.json { head :no_content }
    end
  end
end
