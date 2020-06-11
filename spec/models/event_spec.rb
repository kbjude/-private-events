require 'rails_helper'
-- format documentation
RSpec.describe Event, type: :model do
  context 'Validate event' do
    it 'when there are no arguments provided' do
      event = Event.new
      expect(event.save).to_eql(false)
    end
  end
end
