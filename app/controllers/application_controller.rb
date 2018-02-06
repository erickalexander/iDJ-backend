class ApplicationController < ActionController::API

  def issue_token(user)
    JWT.encode({id: user.id},ENV['secret'],'HS256')
  end
end
