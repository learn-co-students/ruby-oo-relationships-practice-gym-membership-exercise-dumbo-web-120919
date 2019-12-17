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

  def memberships
    Membership.all.select do |membership_inst|
      membership_inst.gym == self
    end
  end
  
  def lifters
    memberships.map do |membership_inst|
      membership_inst.lifter
    end
  end

  def lifter_names
    lifters.map do |lifter_inst|
      lifter_inst.name
    end
  end

  def lift_totals
    lifters.reduce(0) do |sum, lifter|
      sum + lifter.lift_total
    end
  end

end



