class SessionsController < ApplicationController
  before_action :current_user

  def new
    if logged_in?
      redirect_to homepage_path
    end
  end

  def create
    if auth
      user = User.find_or_create_by(:uid => auth['uid']) do |u|
        u.name = auth['info']['name']
        u.email = auth['info']['email']
      end
      session[:user_id] = user.id
    else
      user = User.find_by(name: params[:user][:name])
      user = user.try(:authenticate, params[:user][:password])
      return redirect_to(controller: 'sessions', action: 'new') unless user
      session[:user_id] = user.id
      @user = user
      redirect_to homepage_path
    end
  end

  def destroy
    session.delete :user_id
    redirect_to homepage_path
  end

  def auth
    request.env['omniauth.auth']
  end

end
