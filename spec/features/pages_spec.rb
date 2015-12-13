require 'rails_helper'

RSpec.feature "Pages", type: :feature do
  describe 'menu' do
    it 'have working urls' do
      visit root_url

      click_link 'usługi'
      expect(current_url).to eq(service_url)
      click_link 'home'
      expect(current_url).to eq(root_url)
      click_link 'kontakt'
      expect(current_url).to eq(contact_url)
      click_link 'o nas'
      expect(current_url).to eq(about_url)
      click_link 'komentarze'
      expect(current_url).to eq(comments_url)
    end
  end

  describe "urls" do
    it "on index should work" do
      visit root_url

      click_link "pokaż wszystko"
      expect(current_url).to eq(service_url)
    end

    it "in komentarze should work" do
      visit comments_url

      click_link 'Skontaktuj się'
      expect(current_url).to eq(contact_url)
    end

  end
end
