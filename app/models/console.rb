class Console < ApplicationRecord
  belongs_to :user
  has_many :bookings

  BRAND = ["PS4", "PS3", "PS2", "PSOne", "XBOX", "XBOX One", "Nintendo Ness", "Wii", "SEGA", "Nintendo 64", "Gamecube"]

  validates :brand, inclusion: { in: BRAND, allow_nil: false }

end
