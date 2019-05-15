class Booking < ApplicationRecord
  belongs_to :service_provider, class_name: "User", foreign_key: "service_provider_id"
  belongs_to :client, class_name: "User", foreign_key: "client_id"
end
