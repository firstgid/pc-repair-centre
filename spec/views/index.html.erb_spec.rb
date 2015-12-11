require 'rails_helper'

RSpec.describe "page/index", type: :view do
  it 'should display index' do
    render

    expect(rendered).to have_css('h3', 'Nasze usługi')
    expect(rendered).to have_css('blockquote p.name', 'Tomasz Kowalski')
    expect(rendered).to have_css('div#video iframe')
  end
end
