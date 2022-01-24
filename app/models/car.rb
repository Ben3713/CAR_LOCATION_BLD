class Car < ApplicationRecord
  has_many :bookings
  has_many :user, through: :bookings
end
