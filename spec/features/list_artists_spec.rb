require 'rails_helper'

describe "Visitor views list of artists" do

  let!(:artist1) {create :artist , name: "Freddy Joseph"}
  let!(:artist2) {create :artist , name: "Paul Smith"}

  it "shows all the artists" do
      visit artists_url
    expect(page).to have_text("Freddy Joseph")

  end

  it "does not show artist who are not icluded" do
    visit artists_url

    expect(page).not_to have_text("Different Singer")
  end

end
