class Event < ApplicationRecord
  has_many :attended_events, dependent: :destroy
  has_many :users, through: :attended_events, source: :user
  belongs_to :creator, class_name: "User"

  scope :upcoming_date, -> { select { |event| event.date >= Time.zone.now } }
  scope :past_date, -> { select { |event| event.date < Time.zone.now } }

  def self.creator(event)
    User.where(id: event.user_id)
  end
end
