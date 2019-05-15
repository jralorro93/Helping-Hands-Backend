class User < ApplicationRecord
  has_secure_password
  has_many :appointments, class_name: "Booking", foreign_key: 'client_id'
  has_many :jobs, class_name: "Booking", foreign_key: 'service_provider_id'
end
