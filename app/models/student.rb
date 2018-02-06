class Student < ApplicationRecord
  has_secure_password
  has_many :reservations, :dependent => :destroy
  has_many :instructors, :through => :reservations, :source => :session
end
