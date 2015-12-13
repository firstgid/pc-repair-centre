require 'rails_helper'

RSpec.describe 'page/comments', :type => :view do
  it 'should have valid content' do
    render

    expect(rendered).to have_css('blockquote', :count => 4)
    expect(rendered).to have_css('h2', :text => 'Nasi zadowoleni klienci')
    expect(rendered).to have_css('h3', :text => 'Opinie naszych')
  end
end
