module Session
  def self.generate_token(user)
    Base64.encode64(user.email)
  end

  def self.decode_token(token)
    Base64.decode64(token)
  end

  def current_user
    User.find_by_email!(Session.decode_token(params[:token]))
  end
end
