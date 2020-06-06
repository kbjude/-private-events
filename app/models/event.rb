class Event < ApplicationRecord
    has_many :attended_events, dependent: :destroy
    has_many :users, through: :attended_events, source: :user
end
