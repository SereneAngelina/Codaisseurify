class Api::SongsController < ApplicationController
skip_before_action :verify_authenticity_token


 def create
     new_song = Song.new(playlist_params)
     new_song.artist_id = params[:artist_id]
     if new_song.save
       render status: 200, json: {
         message: "Song added",
         artist: @artist,
         song: new_song
       }.to_json
     else
        render status: 422, json: {
          message: "Song cannot be added",
          errors: new_song.errors
        }.to_json
    end
 end


 def destroy
    @artist = Artist.find(params[:artist_id])
    song = @artist.songs.find(params[:id])
    song.destroy
    render status: 200, json: {
      message: "Song deleted",
      artist: @artist,
      song: song
    }.to_json
end

def destroy_all
    @artist = Artist.find(params[:artist_id])
    @artist.songs.destroy_all
    render status: 200, json: {
      message: "Songs deleted"
    }.to_json

end



private
def playlist_params
    params.require(:song).permit(:name, :url)
end
end
