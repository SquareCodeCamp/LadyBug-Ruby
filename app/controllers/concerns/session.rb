module Session
  def self.generate_token(user)
    Base64.encode64(user.email)
  end

  def self.decode_token(token)
    Base64.decode64(token)
  end

  def current_user
    User.find_by_email(get_token && Session.decode_token(get_token))
  end

  private
  def get_token
  	session[:token] || params[:token]
  end

end
