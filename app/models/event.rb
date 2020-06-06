class Event < ApplicationRecord
    # belongs_to :user
    has_many :attended_events, dependent: :destroy
    has_many :users, through: :attended_events, source: :user
end
