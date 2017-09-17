require 'rails_helper'

feature 'Add new song', js: true do
  scenario 'Add a new song' do

      @artist1 = FactoryGirl.create :artist

    visit artist_path(@artist1)

    fill_in 'name', with: "My Jesus"
    fill_in 'url', with: "http://jhfgh"
    page.execute_script("$('#add-song').click()")


    expect(page).to have_content "My Jesus"
  end

  scenario 'Add a new song' do

      @artist1 = FactoryGirl.create :artist

    visit artist_path(@artist1)

    fill_in 'name', with: "My Jesus"
    fill_in 'url', with: "http://jhfgh"
    page.execute_script("$('#add-song').click()")
    # page.find("#add-song").click

    expect(page).not_to have_content "New song added"
  end


end
