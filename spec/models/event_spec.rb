require 'rails_helper'

RSpec.describe Event, type: :model do
  context 'Validate event input' do
    it 'when a new object is created' do
      event = Event.new
      expect(event.save).to eql(true)
    end

    it 'when form is well filled' do
      event = Event.create(name: "The Party", description: "We shall have fan", date: "2020-06-11 16:59:51 +0300")
      expect(event.save).to eql(true)
    end
  end
end
