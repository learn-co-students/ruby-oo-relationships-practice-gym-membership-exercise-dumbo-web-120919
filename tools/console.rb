# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
l1 = Lifter.new("Mike", 30)
l2 = Lifter.new("Charles", 50)
g1 = Gym.new("Planet Fitness")
g2 = Gym.new("Blink")
m1 = l1.new_membership(g1, 100)
m2 = l1.new_membership(g2, 400)
m3 = l2.new_membership(g1, 50)
binding.pry

puts "Gains!"
