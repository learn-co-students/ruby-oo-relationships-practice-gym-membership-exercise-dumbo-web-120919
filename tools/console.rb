# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
g1 = Gym.new("Gold")
g2 = Gym.new("Equinox")
g3 = Gym.new("NYSC")

l1 = Lifter.new("Ted", 200)
l2 = Lifter.new("Bob", 180)
l3 = Lifter.new("Dan", 250)

m1 = Membership.new(100, g1, l1)
m2 = Membership.new(150, g2, l3)
m3 = Membership.new(200, g3, l1)
m4 = Membership.new(99, g1, l2)

binding.pry

puts "Gains!"
