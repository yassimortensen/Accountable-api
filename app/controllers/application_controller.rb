class ApplicationController < ActionController::API

  def current_user
    @user ||= User.find_by(id: get_user_id)
  end

  def get_user_id
    decoded_token.first['user_id']
  end

  def decoded_token
    begin
      JWT.decode(request.headers['Authorization'], 'lavender', 'HS256')
    rescue JWT::DecodeError
      [{}]
    end
  end

  def issue_token(id)
    JWT.encode({user_id: id}, 'lavender', 'HS256')
  end
end
