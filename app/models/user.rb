class User < ApplicationRecord
  has_many :attended_events, dependent: :destroy
  has_many :events, through: :attended_events, source: :event
  has_many :events, foreign_key: :creator_id
end
