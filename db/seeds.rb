# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

5.times do |i|
  name = Faker::Name.name
  puts "Registering #{name}...\n"
  Person.create(name: name)
end

20.times do |i|
  name = Faker::Company.name
  puts "creating stock #{name}...\n"
  Stock.create(name: name)
end

Person.all.each do |person|
  person.stocks << Stock.all.sample(5)
end
