class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :role, :imgUrl
  # service provider side
  has_many :bookings
  has_many :clients
  has_one :service

  # client side
  has_many :appointments, serializer: BookingSerializer
  has_many :service_providers

  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :email, presence: true, uniqueness: true
  # validates :role, presence: true

end
