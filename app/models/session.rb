class Session < ApplicationRecord
  belongs_to :instructor
  has_many :reservations
end
