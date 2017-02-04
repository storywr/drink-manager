class UsersController < ApplicationController

  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
  end

  def homepage
    @styles = Style.all
    @beers = Beer.all
    @users = User.all
  end

end