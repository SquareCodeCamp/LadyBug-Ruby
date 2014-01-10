class SessionsController < ApplicationController
  def login
    u = User.find_by_email!(params[:email])
    render json: { token: Session.generate_token(u) }
  end
end
