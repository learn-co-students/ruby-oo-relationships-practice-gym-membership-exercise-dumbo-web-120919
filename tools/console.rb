# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'
# test code goes here

#Lifter.new(name, lift_total)
l1 = Lifter.new("Lifter 1", 50)
l2 = Lifter.new("Lifter 2", 150)
l3 = Lifter.new("Lifter 3", 20)

#Gym.new(name)
g1 = Gym.new("Gym 1")
g2 = Gym.new("Gym 2")
g3 = Gym.new("Gym 3")
g4 = Gym.new("Gym 4")

#Membership.new(cost, gym, lifter)
m1 = Membership.new(300, g1, l1)
m2 = Membership.new(500, g3, l2)
m3 = Membership.new(500, g3, l1)
m4 = Membership.new(800, g2, l3)

binding.pry

puts "Gains!"
