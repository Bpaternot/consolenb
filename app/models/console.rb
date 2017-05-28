class Console < ApplicationRecord
  has_attachment :photo
  belongs_to :user
  has_many :bookings
  has_many :reviews, dependent: :destroy
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  BRAND = ["PS4", "PS3", "XBOX", "Wii", "Gamecube"]

  validates :brand, inclusion: { in: BRAND, allow_nil: false }
  validates :shifter, presence: true
  validates :description, presence: true
  validates :price_per_day, presence: true
  validates :address, presence: true

end
