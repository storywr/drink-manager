class BeersController < ApplicationController
  before_action :current_user

  def index
    @beers = Beer.all
  end

  def show
    @beer = Beer.find(params[:id])
  end

  def best
    @beers = Beer.all
  end

  def new
    @beer = Beer.new
    @style = Style.new
    @beer.style = @style
  end

  def create
    @beer = Beer.create(beer_params)
    redirect_to beer_path(@beer)
  end

  private

  def beer_params
    params.require(:beer).permit(:name, :description, :abv, :style_id, style_attributes: [:id, :name, :description])
  end

end
