class Api::V1::GoalsController < ApplicationController
  before_action :set_goal, only: [:show, :update, :destroy]

  def index
    @goals = Goal.all
    render json: @goals
  end

  def create
    # byebug
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
    @goal.destroy
    render json: {message: "successful delete"}
  end

  private

  def set_goal
    @goal = Goal.find(params[:id])
  end

  def goal_params
    params.permit(:user_id, :name, :description, :frequency, :binary, :amount, :unit)
  end
end
