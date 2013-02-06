class QuestionsController < ApplicationController

  def index
    @questions = Question.order('created_at DESC').page(params[:page])
    
    @question = Question.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @questions }
    end
  end

  def create
    @question = Question.new(params[:question])
    @questions = Question.order('created_at DESC').page(params[:page])

    respond_to do |format|
      if @question.save
        format.html { redirect_to '/questions', notice: 'Question was successfully created.' }
        format.json { render json: @question, status: :created, location: @question }
      else
        format.html { render action: "index" }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

end
