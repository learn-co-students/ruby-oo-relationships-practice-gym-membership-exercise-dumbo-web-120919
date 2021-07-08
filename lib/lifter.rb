class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  # Get a list of all the memberships that a specific lifter has
  def memberships
    Membership.all.select do |membership_object|
      membership_object.lifter == self
    end
  end

  # Get a list of all the gyms that a specific lifter has memberships to
  def gyms
    memberships.map do |this_lifters_membership|
      this_lifters_membership.gym
    end
  end

  # Get the total cost of a specific lifter's gym memberships
  def total_membership_cost
    total = 0
    memberships.each do |this_lifters_membership| 
      total += this_lifters_membership.cost
    end
    total
  end

  # Given a gym and a membership cost, sign a specific lifter up for a new gym
  def join_gym(gym, cost)
    Membership.new(cost, gym, self)
  end

  # Get the average lift total of all lifters
  def self.average_lift_total
    # get lift total of all lifters
    total = 0
    Membership.all.each do |membership_object|
      total += membership_object.lifter.lift_total
    end
    # get average (lift total / num of lifters)
    total / @@all.length
  end

  # Get a list of all lifters
  def self.all
    @@all
  end
end