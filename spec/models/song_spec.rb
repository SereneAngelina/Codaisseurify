require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "validations" do
    it "is invalid without song_name" do
      song = Song.new(song_name: nil)
      song.valid?
      expect(song.errors).to have_key(:song_name)
    end

    it "is invalid with a song name longer than 50 characters" do
         song = Song.new(song_name: "Hello all this song is the most wonderful song in this world")
         song.valid?
         expect(song.errors).to have_key(:song_name)
       end

   it "is invalid without song_url" do
        song = Song.new(song_url: nil)
        song.valid?
        expect(song.errors).to have_key(:song_url)
      end
   end

   describe "association with artist" do
  let(:artist) { create :artist }

  it "belongs to a artist" do
    song = artist.songs.build(song_name: "Good Father")

    expect(song.artist).to eq(artist)
  end
 end
end
