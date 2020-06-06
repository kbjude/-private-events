class User < ApplicationRecord
    has_many :attended_events, dependent: :destroy
    has_many :events, through: :attended_events, source: :event
end
