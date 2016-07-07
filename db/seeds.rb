# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

burns = Burn.create([{ name: 'POrtalBurn'}, { name: 'Playa del Fuego'}])

candybar = Event.create(title: 'Candy From Strangers', description: 'candy bar', burn_id: 2)