require 'rails_helper'

RSpec.describe User, type: :feature do
  context 'Login attemps' do
    it 'returns login form when no user is logged in' do
      visit new_user_path
      expect(page).to have_content('Signin')
    end
  end
end
