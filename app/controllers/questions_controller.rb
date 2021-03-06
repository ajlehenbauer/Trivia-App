class QuestionsController < ApplicationController
  
  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    #@question = Question.new(question_params)
    if @question.save
      flash[:success] = "Question Added!"
      redirect_to :newQuestion
    else
      render 'new'
    end
  end
  def destroy
    Question.find(params[:id]).destroy
    flash[:success] = "User deleted."
    redirect_to moderate_url
  end
  def question_params
    params.require(:question).permit(:title, :correct, :wrong1, :wrong2, :wrong3, :creator)
  end

end
