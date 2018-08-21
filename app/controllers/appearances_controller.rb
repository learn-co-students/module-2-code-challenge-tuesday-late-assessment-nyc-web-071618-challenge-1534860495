class AppearancesController < ApplicationController

  def new
    @appearance = Appearance.new
  end

  def index
    @appearance = Appearance.new
    render :new
  end
  def create
    param = appearance_params
    @appearance = Appearance.create( param)
    if @appearance.valid?
      redirect_to episode_path(param[:episode_id])
    else
      render :new
    end
  end

  private
  def appearance_params
    params.require(:appearance).permit(:guest_id, :episode_id, :rating)
  end
end
