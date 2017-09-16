class SongsController < ApplicationController


def create
   @new_song = Song.new(playlist_params)
    @new_song.artist_id = params[:artist_id]
  #  @artist = Artist.find(params[:artist_id])
  #  @new_song = @artist.songs.new(playlist_params.merge(artist_id: params[:artist_id]))
   if @new_song.save
   redirect_to @new_song.artist
   else
     redirect_to @new_song.artist, notice: "Please fill valid details"
   end

end


def destroy
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.find(params[:id])
    @song.destroy
    redirect_to artist_path(@artist)
end


private
def playlist_params
    params.require(:song).permit(:name, :url)
end

end
