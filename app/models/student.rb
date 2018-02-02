class Student < ApplicationRecord
  has_many :reservations, :dependent => :destroy
  has_many :instructors, :through => :reservations, :source => :sessions
end
