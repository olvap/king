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

cards = [{ name: 'Acid Attack',
          cost: 6,
          kind: keep,
          description: "Deal 1 extra damage each turn (even when you don't otherwise attack)."
        },
        { name: 'Alien Metabolism',
          cost: 3,
          kind: keep,
          description: "Buying cards costs you 1 less [Energy]."
        },
        { name: 'Alpha Monster',
          cost: 5,
          kind: keep,
          description: "Gain 1[Star] when you attack."
        },
        { name: 'Apartment Building',
          cost: 5,
          kind: discard,
          description: "+ 3[Star]"
        }]

Card.destroy_all
Card.create cards
