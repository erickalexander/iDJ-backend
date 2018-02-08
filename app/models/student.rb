class Student < ApplicationRecord
  has_secure_password
  has_many :sessions, :dependent => :destroy
  has_many :instructors, :through => :sessions
end
