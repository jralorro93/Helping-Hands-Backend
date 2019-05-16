class BookingSerializer < ActiveModel::Serializer
  attributes :id, :date, :time
  belongs_to :client
  belongs_to :service_provider
end
