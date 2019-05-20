class BookingSerializer < ActiveModel::Serializer
  attributes :id, :client_id, :service_provider_id, :service_id, :date, :time
  belongs_to :client
  belongs_to :service_provider
end
