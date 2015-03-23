class QuestionsController <ApplicationController
  def index
    @questions = Question.all
  end

  def create
    @question = Question.new(questions_params)
    if @question.save
      flash[:notice] = "Question Saved"
      redirect_to questions_path
    else
      render :new
    end
  end

  def new
    @question = Question.new
  end

  def edit
    @question = Question.find(params[:id])
    flash[:notice] = "Your question has been edited successfully"
  end

  def show
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(questions_params)
      redirect_to questions_path
    else
      render :edit
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    flash[:notice] = "Question Deleted"
    redirect_to questions_path
  end

private
  def questions_params
    params.require(:question).permit(:inquiry, :response_id)
  end
end
