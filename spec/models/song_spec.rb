require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "validations" do
    it "is invalid without name" do
      song = Song.new(name: nil)
      song.valid?
      expect(song.errors).to have_key(:name)
    end

    it "is invalid with a song name longer than 50 characters" do
         song = Song.new(name: "Hello all this song is the most wonderful song in this world")
         song.valid?
         expect(song.errors).to have_key(:name)
       end

   it "is invalid without url" do
        song = Song.new(url: nil)
        song.valid?
        expect(song.errors).to have_key(:url)
      end
   end

   describe "association with artist" do
  let(:artist) { create :artist }

  it "belongs to a artist" do
    song = artist.songs.build(name: "Good Father")

    expect(song.artist).to eq(artist)
  end
 end
end
