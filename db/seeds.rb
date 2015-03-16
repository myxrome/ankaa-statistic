# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
EventType.find_or_create_by! name: 'Unknown'
counter = EventType.find_or_create_by! name: 'Counter'
timer = EventType.find_or_create_by! name: 'Timer'

Event.find_or_create_by! tag: 'VALUE_CONVERSION' do |event|
  event.update_attributes! name: 'Value Conversion', event_type: counter
end