class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true

  def current_user
    @user = (User.find_by(id: session[:user_id]) || User.new)
  end

  def logged_in?
   current_user.id != nil
 end

end
