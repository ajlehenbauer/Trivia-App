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
      flash[:danger] = "Question Not Added!"
      redirect_to :newQuestion
    end
  end

  def answer
    @title = params[:id]
   
    
  end
  def question_params
    params.require(:question).permit(:title, :correct, :wrong1, :wrong2, :wrong3)
  end

end
