require 'rails_helper'

describe "Viewing an individual artist" do
  let(:artist) { create :artist }

  it "shows the room's details" do
    visit artist_url(artist)

    expect(page).to have_text(artist.songs.name)


  end
end
