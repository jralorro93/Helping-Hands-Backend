class Booking < ApplicationRecord
  # belongs_to :service_provider, class_name: "User"
  belongs_to :client, class_name: "User"
  belongs_to :service
  has_one :service_provider, through: :service, class_name: "User"
end
