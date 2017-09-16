require 'rails_helper'

describe "Navigating to artists show page" do

  let!(:artist) { create :artist}

  it "allows navigation from the overview page to show" do
    visit artists_url

    click_link artist.name

    expect(current_path).to eq(artist_path(artist))
  end
end
