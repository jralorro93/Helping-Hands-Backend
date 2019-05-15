class Booking < ApplicationRecord
  belongs_to :service_provider, class_name: "User"
  belongs_to :client, class_name: "User"
  belongs_to :service
end
