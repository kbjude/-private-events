class User < ApplicationRecord
    has_many :appointments, dependent: :destroy
    has_many :events, through: :attended_events
end
