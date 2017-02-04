class StylesController < ApplicationController

  def index
    @styles = Style.all
  end

  def show
    @style = Style.find(params[:id])
  end

  def new
    @style = Style.new
  end

  def create
    @style = Style.create(style_params)
    redirect_to style_path(@style)
  end

  private

  def style_params
    params.require(:style).permit(:name, :description)
  end


end
