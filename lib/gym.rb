class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end
# Get a list of all memberships at a specific gym
  def memberships
    Membership.all.select{|membership| membership.gym == self}
  end

# Get a list of all the lifters that have a membership to a specific gym
  def lifters
    self.memberships.map do |lifter_instance| 
      lifter_instance.lifter
    end
  end

# Get a list of the names of all lifters that have a membership to that gym
  def names
    lifters.map do |lifter|
      lifter.name
    end
  end

# Get the combined lift total of every lifter has a membership to that gym
  def combined_total
    lifters.sum(&:lift_total)
  end
end

# Get a list of all gyms

# Get a list of all memberships at a specific gym

# Get a list of all the lifters that have a membership to a specific gym

# Get a list of the names of all lifters that have a membership to that gym

# Get the combined lift total of every lifter has a membership to that gym