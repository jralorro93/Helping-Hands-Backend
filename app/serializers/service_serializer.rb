class ServiceSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :service_provider
  has_many :clients
end
