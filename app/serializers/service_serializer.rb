class ServiceSerializer < ActiveModel::Serializer
  attributes :id, :job, :availability, :description
  belongs_to :service_provider
  has_many :clients
end
