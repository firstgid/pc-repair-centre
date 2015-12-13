require 'rails_helper'

RSpec.describe 'page/contact', :type => :view do
  it 'should display contact content' do
    render

    expect(rendered).to have_css('h2', text: 'Skontaktuj się')
    expect(rendered).to have_css('a', text: 'zobacz na Google Street')
    expect(rendered).to have_content('pcrepair@example.com')
    expect(rendered).to have_content('31-870 Kraków')
  end
end
