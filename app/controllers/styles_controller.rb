class StylesController < ApplicationController
  before_action :current_user

  def index
    @styles = Style.all
  end

  def show
    @style = Style.find(params[:id])
    respond_to do |format|
      format.json { render json: @style }
      format.html { render :show}
    end
  end

  def new
    @style = Style.new
  end

  def create
    @style = Style.create(style_params)
    if @style.save
      redirect_to style_path(@style)
    else
      render "new"
    end
  end

  private

  def style_params
    params.require(:style).permit(:name, :description, :beer_id)
  end


end
