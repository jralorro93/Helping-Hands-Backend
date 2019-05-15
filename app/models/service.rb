class Service < ApplicationRecord
  belongs_to :service_provider, class_name: "User"
  has_many :bookings 
  has_many :clients, through: :bookings, class_name: "User"
end
