class Booking < ApplicationRecord
  STATUS = ["approved", "pending", "declined", "past"]

  belongs_to :user
  belongs_to :console
  validates :duration, presence: true
  validates :status, inclusion: { in: STATUS }
end
