class ResponsesController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]


  def new
    @question = Question.find(params[:question_id])
    @response = @question.responses.new
  end

  def create
    @question = Question.find(params[:question_id])
    @response = @question.responses.new(response_params)
    if @response.save
      flash[:notice] = "Response successfully added!"
      redirect_to question_path(@response.question)
    else
      render :new
    end
  end

  def edit
    @question = Question.find(params[:question_id])
    @response = Response.find(params[:id])
  end

  def update
    @question = Question.find(params[:question_id])
    @response = Response.find(params[:id])
    if @response.update(response_params)
      flash[:notice] = "Response successfully updated!"
      redirect_to questions_path(@response.question)
    else
      render :edit
    end
  end

  def destroy
    @response = Response.find(params[:id])
    @response.destroy
    redirect_to questions_path(@response.question)
    flash[:notice] = "Response successfully deleted!"
  end

private
    def response_params
      params.require(:response).permit(:answer)
    end
end
