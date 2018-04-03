class Session < ApplicationRecord
  belongs_to :instructor
  belongs_to :student, optional: true
  has_many :ratings
end
