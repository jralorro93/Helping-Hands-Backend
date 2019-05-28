class BookingSerializer < ActiveModel::Serializer
  attributes :id, :client_id, :service, :date, :time, :service_provider_id
  belongs_to :client

  def service_provider_id
    object.service_provider.id
  end
end
