# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
PartOfCharacteristic.delete_all
Characteristic.delete_all
Address.delete_all
Address.create(name: 'localhost')
Person.create(pid: 1)
# This file is auto-generated from the current state of the database. Instead


InformationSystem.create(name: 'Банк', timezone: 3 )
