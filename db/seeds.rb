# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Service.destroy_all
# User.destroy_all
# Booking.destroy_all

# Users
User.create(first_name: "Jep", last_name: "Alorro", email: "jep@test.com", password: "123")
User.create(first_name: "Aj", last_name: "DiFresco", email: "aj@test.com", password: "123")
User.create(first_name: "Angelo", last_name: "DiFresco", email: "angelo@test.com", password: "123")


# Services
Service.create!(job: "Plumber", price: 60.00, service_provider_id: 1)
Service.create!(job: "Nanny", price: 60.00, service_provider_id: 1)


# # Bookings
# Booking.create(client_id: 1, service_provider_id: 1, date: "", time: "")
# Booking.create(client_id: 2, service_provider_id: 2, date: "", time: "")
# Booking.create(client_id: 3, service_provider_id: 1, date: "", time: "")
