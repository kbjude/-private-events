require 'rails_helper'

RSpec.describe User, type: :model do
  context 'User Login attemps' do
    it 'returns login form when no user is logged in' do
      expect(page).to contain('Signin')
    end
  end
end
