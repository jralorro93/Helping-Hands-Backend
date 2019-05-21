class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :role
  # service provider side
  has_many :bookings
  has_many :clients

  # client side
  has_many :appointments
  has_many :service_providers
end
