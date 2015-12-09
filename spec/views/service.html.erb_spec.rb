require 'rails_helper'

RSpec.describe "page/service", type: :view do
  it 'display service' do
    render

    expect(rendered).to have_css('ul.services')
    expect(rendered).to have_css('div.services')
    expect(rendered).to have_content("Naprawa Tabletów")
  end
end
