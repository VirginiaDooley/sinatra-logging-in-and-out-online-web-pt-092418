class Helpers

#class method to find the user_id of the current session
  def self.current_user(session)
    User.find(session[:user_id])
  end

  # The double negation forces the return value to be a boolean.
  def self.is_logged_in?(session)
    !!session[:user_id]
  end

end
