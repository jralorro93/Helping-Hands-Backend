class BookingSerializer < ActiveModel::Serializer
  attributes :id, :client_id, :service_id, :date, :time, :service_provider_id
  belongs_to :client
  belongs_to :service

  def service_provider_id
    object.service_provider.id
  end
end
