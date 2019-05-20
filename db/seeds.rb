# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Service.destroy_all
User.destroy_all
Booking.destroy_all

# Users
User.create(first_name: "Aj", last_name: "DiFresco", email: "aj@test.com", password: "123", role: "client")
angelo = User.create(first_name: "Angelo", last_name: "DiFresco", email: "angelo@test.com", password: "123", role: "service provider")
hana = User.create(first_name: "Hana", last_name: "DiFresco", email: "hana@test.com", password: "123", role: "service provider")
User.create(first_name: "Sam", last_name: "Portune", email: "sam@test.com", password: "123", role: "client")
User.create(first_name: "James", last_name: "Dorr", email: "james@test.com", password: "123", role: "client")
User.create(first_name: "Sadie", last_name: "Bennett", email: "sadie@test.com", password: "123", role: "client")
meredith = User.create(first_name: "Meredith", last_name: "Strickland", email: "meredith@test.com", password: "123", role: "service provider")
chris = User.create(first_name: "Chris", last_name: "Truong", email: "chris@test.com", password: "123", role: "service provider")
simon = User.create(first_name: "Simon", last_name: "Mei", email: "simon@test.com", password: "123", role: "service provider")
fredi = User.create(first_name: "Fredi", last_name: "Ramirez", email: "fredi@test.com", password: "123", role: "service provider")
marcus = User.create(first_name: "Marcus", last_name: "Kilbrew", email: "marcus@test.com" , password: "123", role: "service provider")
brian = User.create(first_name: "Brian", last_name: "Ryu", email: "brian@test.com", password: "123", role: "service provider")
mathew = User.create(first_name: "Mathew", last_name: "Campbell", email: "mathew@test.com", password: "123", role: "service provider")
gracie = User.create(first_name: "Gracie", last_name: "McGuire", email: "gracie@test.com", password: "123", role: "service provider")
kevin = User.create(first_name: "Kevin", last_name: "McAlear", email: "kevin@test.com", password: "123", role: "service provider")
greg = User.create(first_name: "Greg", last_name: "Dywer", email: "greg@test.com", password: "123", role: "service provider")
gigi = User.create(first_name: "Gigi", last_name: "Hoagland", email: "gigi@test.com", password: "123", role: "service provider")
ayana = User.create(first_name: "Ayana", last_name: "Zaire", email: "ayana@test.com", password: "123", role: "service provider")

# Services
Service.create!(job: "Plumber", price: 60.00, availability: "Mon - Fri 9 am - 5 pm", service_provider_id: angelo.id)
Service.create(job: "Plumber", price: 60.00, availability: "Mon - Fri 9 am - 5 pm", service_provider_id: brian.id)
Service.create!(job: "Nanny", price: 60.00, availability: "Any", service_provider_id: hana.id)
Service.create!(job: "Nanny", price: 60.00, availability: "Any", service_provider_id: greg.id)
Service.create(job: "Roofer", price: 60.00, availability: "Mon - Fri 9 am - 5 pm", service_provider_id: meredith.id)
Service.create(job: "Roofer", price: 60.00, availability: "Mon - Fri 9 am - 5 pm", service_provider_id: kevin.id)
Service.create(job: "Nurse", price: 60.00, availability: "Mon - Fri 9 am - 5 pm", service_provider_id: chris.id)
Service.create(job: "Nurse", price: 60.00, availability: "Mon - Fri 9 am - 5 pm", service_provider_id: ayana.id)
Service.create(job: "Painter", price: 60.00, availability: "Mon - Fri 9 am - 5 pm", service_provider_id: simon.id)
Service.create(job: "Painter", price: 60.00, availability: "Mon - Fri 9 am - 5 pm", service_provider_id: gigi.id)
Service.create(job: "House Keeper", price: 60.00, availability: "Mon - Fri 9 am - 5 pm", service_provider_id: fredi.id)
Service.create(job: "House Keeper", price: 60.00, availability: "Mon - Fri 9 am - 5 pm", service_provider_id: gracie.id)
Service.create(job: "Gardener", price: 60.00, availability: "Mon - Fri 9 am - 5 pm", service_provider_id: marcus.id)
Service.create(job: "Gardener", price: 60.00, availability: "Mon - Fri 9 am - 5 pm", service_provider_id: mathew.id)
# Service.create(job: "", price: 60.00, service_provider_id: )
# Service.create(job: "", price: 60.00, service_provider_id: )

# # Bookings
# Booking.create(client_id: 1, service_provider_id: 1, date: "", time: "")
# Booking.create(client_id: 2, service_provider_id: 2, date: "", time: "")
# Booking.create(client_id: 3, service_provider_id: 1, date: "", time: "")
