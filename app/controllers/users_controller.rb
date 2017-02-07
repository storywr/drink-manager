class UsersController < ApplicationController
  before_action :current_user

  def index
    @current_user = (User.find_by(id: session[:user_id]) || User.new)
    @users = User.all
  end

  def show
    @current_user = (User.find_by(id: session[:user_id]) || User.new)
    @user = User.find(params[:id])
  end

  def new
    if logged_in?
      redirect_to homepage_path
    end
  end

  def create
    @user = User.create(user_params)
    return redirect_to controller: 'users', action: 'new' unless @user.save
    session[:user_id] = @user.id
    redirect_to homepage_path
  end

  def homepage
    @styles = Style.all
    @beers = Beer.all
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
