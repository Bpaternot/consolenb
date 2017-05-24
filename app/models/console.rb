class Console < ApplicationRecord
  has_attachment :photo
  belongs_to :user
  has_many :bookings
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  BRAND = ["PS4", "PS3", "PS2", "PSOne", "XBOX", "XBOX One", "Nintendo Ness", "Wii", "SEGA", "Nintendo 64", "Gamecube"]

  validates :brand, inclusion: { in: BRAND, allow_nil: false }


end
