class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :console
  validates :duration, presence: true
end
