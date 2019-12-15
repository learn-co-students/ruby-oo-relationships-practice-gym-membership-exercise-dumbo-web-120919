# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

joe = Lifter.new("Joe", 400)
steph = Lifter.new("Steph", 200)
andrew = Lifter.new("Andrew", 275)
colin = Lifter.new("Colin", 300)

golds = Gym.new("Gold's")
planet_fitness = Gym.new("Planet Fitness")
equinox = Gym.new("Equinox")
crunch = Gym.new("Crunch")

m1 = Membership.new(joe, planet_fitness, 10)
m2 = Membership.new(joe, crunch, 30)
m3 = Membership.new(steph, golds, 30)
m4 = Membership.new(steph, equinox, 90)
m5 = Membership.new(andrew, equinox, 90)
m6 = Membership.new(andrew, planet_fitness, 10)
m7 = Membership.new(colin, golds, 30)
m8 = Membership.new(colin, crunch, 30)

binding.pry

puts "Gains!"
