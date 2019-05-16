class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :role
  has_many :jobs
  has_many :appointments
  has_many :clients
  has_many :service_providers
end
