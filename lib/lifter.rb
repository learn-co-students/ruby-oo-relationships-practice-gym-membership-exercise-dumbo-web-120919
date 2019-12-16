class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select{|membership| membership.lifter == self}
  end

  # Get a list of all the gyms that a specific lifter has memberships to
  def gyms
    self.memberships.map do |gym_instance| 
      gym_instance.gym
    end
  end

  # Get the average lift total of all lifters
  # the total number of lifters
  # total of lift totals
  #average is numLifters over totalLiftTotals
  
  def self.average_lift
    self.all.sum(&:lift_total)/self.all.length
  end

  def total_cost
    self.memberships.sum(&:cost)
  end

  def new_membership(gym,cost)
    Membership.new(self, gym, cost)
  end
end



# Get a list of all lifters

# Get a list of all the memberships that a specific lifter has

# Get a list of all the gyms that a specific lifter has memberships to

# Get the average lift total of all lifters

# Get the total cost of a specific lifter's gym memberships

# Given a gym and a membership cost, sign a specific lifter up for a new gym




