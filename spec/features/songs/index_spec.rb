require 'rails_helper'
# As a user,
# when I visit '/songs'
# I see each song's title and play count
#

RSpec.describe 'Songs index page' do
  before :each do
    @song_1 = Song.create(title: "Call me maybe", length: 384543, play_count: 5454)
    @song_2 = Song.create(title: "Don't Stop Believin", length: 8435, play_count: 864)
  end

  describe 'it in more details' do
    describe 'it even more' do
      it "I see each song's title" do
        visit '/songs'

        expect(page).to have_content(@song_1.title)
        expect(page).to have_content(@song_2.title)
      end

      it 'I see the play count' do
        visit '/songs'

        expect(page).to have_content(@song_1.play_count)
        expect(page).to have_content(@song_2.play_count)
      end
    end
  end
end
