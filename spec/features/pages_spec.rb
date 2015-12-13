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

    it 'in _footer' do
      visit root_url

      expect(page.body).to have_css('a', :text => 'Site by')
      click_link 'Site by'
      expect(page).to have_title('REPAIR CENTRE')
    end
  end

  describe 'form' do
    it 'in contact.' do
      visit contact_url

      email = 'mariusz1@onet.pl'
      message = 'Witam. Ile kosztuje wymiana ramu do laptopa HP XXX?'

      fill_in 'imie',     :with => 'mariusz'
      fill_in 'email',    :with => email
      fill_in 'subject',  :with => 'naprawa komputera'
      fill_in 'phone',    :with => '600 700 900'
      fill_in 'message',  :with => message

      expect(page).to have_content(message)

      click_on 'Anuluj'
    end
  end

end
