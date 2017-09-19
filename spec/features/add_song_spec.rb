require 'rails_helper'

feature 'Manage Song features', js: true do

 def add_artist
    artist = FactoryGirl.create :artist
    visit artist_path(artist)
    fill_in 'name', with: "My Jesus"
    fill_in 'url', with: "http://artist.com"
 end

scenario 'Add a new song' do
    add_artist
    page.execute_script("$('#add-song').click()")
    expect(page).to have_content "My Jesus"
  end

scenario 'Not to add song that is not given' do
      add_artist
      page.execute_script("$('#add-song').click()")
      expect(page).not_to have_content "New song added"
  end

scenario 'Delete a song' do
        add_artist
        page.execute_script("$('#delete-song').click()")
        expect(page).not_to have_content "My Jesus"
    end

scenario 'Delete all songs' do
          add_artist
          add_artist
          add_artist

          page.execute_script("$('#delete-all-songs').click()")
          page.driver.browser.switch_to.alert.accept
          page.driver.browser.switch_to.alert.accept
          expect(page).not_to have_content "My Jesus"
          expect(page).not_to have_content "http://artist.com"

        end


end
