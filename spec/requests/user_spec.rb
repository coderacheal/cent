require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET splash screen' do
    it 'returns http success' do
      get '/home/index'
      expect(response).to have_http_status(:success)
    end
  end
end
