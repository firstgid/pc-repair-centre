require 'rails_helper'

RSpec.describe PageController, type: :controller do
  describe 'index' do
    it "should have success status" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe 'service' do
    it 'should have success status' do
      get :service
      expect(response).to have_http_status(:success)
    end
  end

  describe 'kontakt' do
    it 'should have success status' do
      get :contact
      expect(response).to have_http_status(:success)
    end
  end

  describe 'comments' do
    it 'should have success status' do
      get :comments
      expect(response).to have_http_status(:success)
    end
  end

  describe 'o nas' do
    it 'should have success status' do
      get :about
      expect(response).to have_http_status(:success)
    end
  end
end
