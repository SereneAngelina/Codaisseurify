require 'rails_helper'

RSpec.describe Artist, type: :model do

  describe "validations" do
    it "is invalid without artist_name" do
      artist = Artist.new(artist_name: nil)
      artist.valid?
      expect(artist.errors).to have_key(:artist_name)
    end
  end

  describe ".by_name" do
    subject { Artist.by_name("M") }

    let(:mandissa) { create :artist, artist_name: "Mandissa" }
    let(:ben) { create :artist, artist_name: "Ben" }
    let(:merin) { create :artist, artist_name: "Merin" }


    it "is sorted on name" do
      expect(subject).to eq([mandissa, merin])
    end
  end

  describe "association with song" do
    let(:artist) { create :artist }
    let!(:song) { create :song, artist: artist }

    it "has many songs" do
      song1 = artist.songs.new(song_name: "Good Morning")
      song2 = artist.songs.new(song_name: "Good Morning")

      expect(artist.songs).to include(song1)
      expect(artist.songs).to include(song2)
    end

    it "deletes associated songs" do
      expect { artist.destroy }.to change(Song, :count).by(-1)
    end
  end
end
