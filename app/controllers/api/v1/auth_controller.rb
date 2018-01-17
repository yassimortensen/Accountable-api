class Api::V1::AuthController < ApplicationController

  def create
    user = User.find_by(email: params[:email])
    if !user
      render json: {error: 'User is invalid', status: 401}
    elsif user.authenticate(params[:password])
      render json: {
        email: user.email,
        id: user.id,
        jwt: issue_token(user.id),
        goals:
          user.goals.map do |goal|
            GoalSerializer.new(goal)
          end
      }
    else
      render json: {error: 'Password is invalid'}, status: 401
    end
  end

  def show
    if current_user
      render json: {
        email: current_user.email,
        id: current_user.id,
        jwt: issue_token(current_user.id),
        goals:
          current_user.goals.map do |goal|
            GoalSerializer.new(goal)
          end
      }
    else
      render json: {error: 'No id present on headers'}, status: 404
    end
  end
end
