class BandsController < ApplicationController

  def index
    @bands = Band.all
  end

  def favorite

    favor = Band.find(params[:id])[:favorite]

    if favor
      Band.update(params[:id], :favorite => false)
      redirect_to '/bands'
    else
      Band.update(params[:id], :favorite => true)
      redirect_to '/bands'
    end
    # Track.update(params[:id], :favorite => favor)
    # redirect_to '/tracks'
  end
end
