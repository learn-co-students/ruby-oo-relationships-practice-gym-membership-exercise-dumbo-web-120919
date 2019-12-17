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
    Membership.all.select do |membership_inst|
      membership_inst.lifter == self
    end
  end

  def gyms
    memberships.map do |membership_inst|
      membership_inst.gym
    end
  end

  def self.average_lifts
    self.all.reduce(0) do |sum, lift|
    sum + lift.lift_total / self.all.length
  end
end

  def total_cost
    memberships.reduce(0) do |sum, membership|
      sum + membership.cost
    end
  end

  def new_membership(gym, cost)
    Membership.new(self, gym, cost)
  end


end

