class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  # Get a list of all memberships at a specific gym
  def all_memberships
    Membership.all.select do |membership_object|
      membership_object.gym == self
    end
  end

  # Get a list of all the lifters that have a membership to a specific gym
  def all_lifters
    all_memberships.map do |this_gyms_membership|
      this_gyms_membership.lifter
    end
  end

  # Get a list of the names of all lifters that have a membership to that gym
  def lifter_names
    all_lifters.map do |this_gyms_lifters|
      this_gyms_lifters.name
    end
  end

  # Get the combined lift total of every lifter has a membership to that gym
  def lift_total
    total = 0
    all_lifters.each do |this_gyms_lifters|
      total += this_gyms_lifters.lift_total
    end
    total
  end

  def self.all
    @@all
  end
end