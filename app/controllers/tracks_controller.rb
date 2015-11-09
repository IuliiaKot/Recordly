class TracksController < ApplicationController

  def index
    @tracks = Track.all
  end

  def new
    @track = Track.new
  end

  def create
    track = Track.new(track_params)
    if track.save
      redirect_to '/tracks'
    else
      redirect_to '/tracks/new'
    end
  end

  def favorite
    favor = Track.find(params[:id])[:favorite]
    if favor
      Track.update(params[:id], :favorite => false)
      redirect_to :back
    else
      Track.update(params[:id], :favorite => true)
      redirect_to :back
    end
    # Track.update(params[:id], :favorite => favor)
    # redirect_to '/tracks'
  end

  def destroy
    @track = Track.find(params[:id])
    @track.destroy
    redirect_to '/tracks'
  end


  private

    def track_params
      params.require(:@track).permit(:name, :album_id)

    end

end
