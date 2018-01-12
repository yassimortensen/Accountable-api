class GoalsController < ApplicationController
  before_action :set_goal, only: [:show, :update, :destroy]

  def index
    @goals = Goal.all
    render json: @goals
  end

  def create
    @goal = Goal.new(goal_params)
    if @goal.save
      render json: @goal
    else
      render json: @goal.errors
    end
  end

  def show
    render json: @goal
  end

  def update
    if @goal.update(goal_params)
      render json: @goal
    else
      render json: @goal.errors
    end
  end

  def destroy
    @goals = Goal.all
    @goal.destroy
    render json: @goals
  end

  private

  def set_goal
    @goal = Goal.find(params[:id])
  end

  def goal_params
    params.permit(:user_id, :name, :description, :frequency, :binary, :amount, :unit)
  end
end
