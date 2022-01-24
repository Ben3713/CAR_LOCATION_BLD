class Car < ApplicationRecord
  has_many :user, through: :bookings
   has_many :bookings, dependent: :destroy
end
