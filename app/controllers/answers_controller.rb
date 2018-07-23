class AnswersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :new, :create]


  def new
    @topic = Topic.find(params[:topic_id])
    @answer = Answer.new
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @answer = Answer.new(answers_params)
    @answer.topic = @topic
    @answer.user = current_user
    if @answer.save
      redirect_to root_path
    else
      render :new
    end
  end

  # def edit
  #   @console = Console.find(params[:id])
  #   authorize @console
  # end

  # def update
  #   @console = Console.find(params[:id])
  #   authorize @console
  #   if @console.update(console_params)
  #     redirect_to root_path
  #   else
  #     render :new
  #   end
  # end

  private

  def answers_params
    params.require(:answer).permit(:description)
  end



end
