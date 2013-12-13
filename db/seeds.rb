# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Kind.count == 0
  Kind.create [{ name: 'Keep' }, { name: 'Discard' }]
end

keep = Kind.where(name: 'Keep').first
discard = Kind.where(name: 'Discard').first

Card.destroy_all

File.open(Rails.root.join('db','cards.txt'), "r").each_line do |line|
  card = line.split(',')
  puts card
  Card.create({ name: card[0],
                cost: card[1],
                kind: Kind.where(name: card[2]).first,
                description: card[3]
              })
end