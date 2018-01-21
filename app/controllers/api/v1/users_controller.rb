class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: {
        name: @user.name,
        email: @user.email,
        id: @user.id,
        jwt: issue_token(@user.id),
        goals:
          @user.goals.map do |goal|
            GoalSerializer.new(goal)
          end
      }
    else
      render json: @user.errors
    end
  end

  def show
    render json: @user
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors
    end
  end

  def destroy
    @users = User.all
    @user.destroy
    render json: @users
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.permit(:name, :password, :email)
  end
end
