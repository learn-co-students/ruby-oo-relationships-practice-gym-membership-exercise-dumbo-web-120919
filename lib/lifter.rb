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

  def all_memberships
    Membership.all.select do |membership_instance|
      membership_instance.lifter == self 
    end
  end

  def all_gyms
    self.all_memberships.map do |membership_instance|
      membership_instance.gym
    end
  end

  def self.average_lift_total
    combined_total = 0

    self.all.map do |lifter_instance|
      combined_total += lifter_instance.lift_total
    end
    combined_total / self.all.count 
  end

  def total_cost_memberships
    total_cost = 0

    self.all_memberships.map do |membership_instance|
      total_cost += membership_instance.cost 
    end
    total_cost
  end

  def new_membership(gym, cost)
    Membership.new(cost, gym, self)
  end
end

