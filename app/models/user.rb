class User < ApplicationRecord
  has_secure_password
  # client side
  has_many :appointments, class_name: "Booking", foreign_key: 'client_id'
  has_many :service_providers, through: :appointments, class_name: "User"

  # service provider side
  # has_many :jobs, class_name: "Booking", foreign_key: 'service_provider_id
  has_many :services, foreign_key: 'service_provider_id'
  has_many :jobs, through: :services, source: :bookings
  has_many :clients, through: :jobs, class_name: "User"
end
