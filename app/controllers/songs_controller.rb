class SongsController < ApplicationController


# POST /song
 # POST /song.json
def create
   @new_song = Song.new(playlist_params)
   @new_song.artist_id = params[:artist_id]
     respond_to do |format|
       if @new_song.save
         format.html { redirect_to @new_song.artist }
         format.json { render json: @new_song, status: :created }
       else
         format.html { redirect_to @new_song.artist,  notice: 'Please enter valid details' }
         format.json { render json: @new_song.errors, status: :unprocessable_entity }
       end
     end
   end
# def create
#    @new_song = Song.new(playlist_params)
#    @new_song.artist_id = params[:artist_id]
#    if @new_song.save
#    redirect_to @new_song.artist
#    else
#      redirect_to @new_song.artist, notice: "Please fill valid details"
#    end
#
# end

def show
    @song = Song.find(params[:id])
  end

def destroy
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.find(params[:id])
    @song.destroy
    respond_to do |format|
       format.html { redirect_to artist_path(@artist) }
        format.json { header :no_content }
     end

end



private
def playlist_params
    params.require(:song).permit(:name, :url)
end

end
