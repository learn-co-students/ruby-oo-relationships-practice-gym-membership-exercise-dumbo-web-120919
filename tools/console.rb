# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'
#Lifter.new (name, lift_total)
l1 = Lifter.new("Holly", 950)
l2 = Lifter.new("Fred", 1300)
l3 = Lifter.new("Sally", 1200)
#Gym.new(name)
g1 = Gym.new ("Lifting Spirits")
g2 = Gym.new ("Death Box")
g3 = Gym.new ("Ultra Gains")
#Membership.new(lifter, gym ,cost)
m1 = Membership.new(l1, g3, 120)
m2 = Membership.new(l1, g1, 90)
m3 = Membership.new(l2, g2, 100)
m4 = Membership.new(l2, g1, 90)
m5 = Membership.new(l3, g2, 100)
m6 = Membership.new(l3, g3, 120)

# test code goes here

binding.pry

puts "Gains!"
