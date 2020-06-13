require 'rails_helper'

RSpec.describe AttendedEvent, type: :model do
  context 'Creation' do 
    it 'without a user id' do
      event = AttendedEvent.new
      expect(event.save).to eql(false)
    end

    it 'with all the arguments' do
      event = AttendedEvent.new(user_id:4, event_id:4)
      expect(event.user_id).to eql(4)
    end
  end
end
