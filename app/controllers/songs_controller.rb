class SongsController < ApplicationController

  def index
    @song = Song.new
    @songs = Song.all
  end

  def create
    @song = Song.create(song_params)
    if @song.save
      redirect_to songs_path
    else
      render :index
    end
  end

  private
  def song_params
    params.require(:song).permit(:song_name, :band_name)
  end
end