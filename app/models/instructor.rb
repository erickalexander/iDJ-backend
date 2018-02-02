class Instructor < ApplicationRecord
  has_secure_password
  has_many :sessions, :dependent => :destroy
  has_many :students, :through => :sessions, :source => :reservations
end
