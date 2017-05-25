class Review < ApplicationRecord
  belongs_to :console
  belongs_to :user
end
