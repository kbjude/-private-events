class Event < ApplicationRecord
    has_many :attended_events, dependent: :destroy
    has_many :users, through: :attended_events, source: :user

    scope :upcoming_date, -> { select { |event| event.date >= Time.zone.now } }
    scope :past_date, -> { select { |event| event.date < Time.zone.now } }

    def self.creator(event)
        User.where(id: event.user_id)
    end
end
