class Console < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :type, in [PS4, PS3, PS2, PSOne, XBOX, XBOX One, Nintendo Ness, Wii, SEGA, Nintendo 64, Gamecube]

end
