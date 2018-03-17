# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Removing all events..."
Event.destroy_all

puts "Creating an Event, Edition, Race and Registration..."

myevent = Event.new(name: "Dinardmite", location: "Dinard", url: "www.dinardmite.fr", organiser: "Gastaud SAS")
myevent.save

myevent = Event.new(name: "Dinardmite2", location: "Dinard2", url: "www.dinardmite2.fr", organiser: "Gastaud2 SAS")
myevent.save

myedition = Edition.new(year: 2019)
myedition.event = myevent
myedition.save

myrace = Race.new(sport: "Swimrun", format: "Swimrun Long", distance_swim: 6, distance_bike: 0, distance_run: 44, vertical_ascent_bike: 0, vertical_ascent_run: 1000, nb_participants: 1000, date: "Sat, 17 Mar 2018 12:00:00 UTC +00:00")
myrace.edition = myedition
myrace.save

myregistration = Registration.new(date: "Sat, 17 Mar 2018 12:00:00 UTC +00:00")
myregistration.user = User.find(1)
myregistration.race = myrace
myregistration.save

puts "Seeding complete!"
