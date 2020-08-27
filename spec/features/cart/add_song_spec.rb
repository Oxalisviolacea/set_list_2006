require 'rails_helper'

RSpec.describe 'Adding a song to the cart' do
  it 'shows a message that the song has been added' do
    @artist_1 = Artist.create(name: 'Prince')
    @song_1 = Song.create(title: "Purple Rain",
                          length: 384543,
                          artist: @artist_1,
                          play_count: 5454)
    @song_2 = Song.create(title: "Lets Go Crazy",
                          length: 8435,
                          artist: @artist_1,
                          play_count: 864)

    visit '/songs'

    within "#song-#{@song_1.id}" do
      click_button 'Add to Cart'
    end

    expect(current_path).to eq('/songs')
    expect(page).to have_content("You now have 1 copy of #{@song_1.title} in your cart.")
    # all(:button, 'Add to Cart').first.click
  end
end
# S - setup
# E - exercise/execute
# A - assertion
#
#
# T - teardown
