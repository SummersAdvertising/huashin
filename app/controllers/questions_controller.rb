class QuestionsController < ApplicationController
  protect_from_forgery :except => [:index]
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
      if verify_recaptcha(:model => @question) && @question.save
        format.html { redirect_to '/questions', notice: 'Question was successfully created.' }
        format.json { render json: @question, status: :created, location: @question }
      else
        flash[:recaptcha_error] = "error with reCAPTCHA"
        format.html { render 'index' }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

end
