# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
g1 = Gym.new("Global Gym")
g2 = Gym.new("Average Joes")
g3 = Gym.new("Planet Fitness")

l1 = Lifter.new("Lunk", 200)
l2 = Lifter.new("Skinny Mini", 50)
l3 = Lifter.new("Average Joe", 110)

m1 = Membership.new(200, g1, l1)
m2 = Membership.new(60, g3, l3)
m3 = Membership.new(10, g2, l2)
m4 = Membership.new(10, g2, l1)

binding.pry

puts "Gains!"
