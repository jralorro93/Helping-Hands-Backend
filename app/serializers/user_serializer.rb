class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :role, :imgUrl
  # service provider side
  has_many :bookings
  has_many :clients
  has_many :services

  # client side
  has_many :appointments, serializer: BookingSerializer
  has_many :service_providers
end
