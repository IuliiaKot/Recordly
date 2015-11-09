class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def show
    @album = Album.find(params[:id])
    @tracks = @album.tracks
  end

  def new
    @album = Album.new
    @bands = Band.all
  end

  def create
    album = Album.new(album_params)
    if album.save
      redirect_to '/albums'
    else
      redirect_to '/albums/new'
    end
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to '/albums'
  end


  def favorite
    favor = Album.find(params[:id])[:favorite]

    if favor
      Album.update(params[:id], :favorite => false)
      redirect_to '/albums'
      #redirect_to :back, notice: "Add to favorite"
    else
      Album.update(params[:id], :favorite => true)
      redirect_to '/albums'
      #redirect_to :back, notice: "Remove from favorite"
    end
  end

  private
  def album_params
    params_album = params.require(:@album).permit(:name, :year)
    params_album[:band_id] = params[:id]
    params_album
  end


end
