require 'rails_helper'

RSpec.describe "page/about", type: :view do
  it 'should display about' do
    render

    expect(rendered).to have_css('div#about h2', 'O nas')
    expect(rendered).to have_xpath('//img[contains(@src, "komp.png")]')
  end
end
