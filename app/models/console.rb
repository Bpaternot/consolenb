class Console < ApplicationRecord
  has_attachment :photo
  belongs_to :user
  has_many :bookings



end
