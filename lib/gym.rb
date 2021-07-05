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

  def all_memberships
    Membership.all.select do |membership_instance|
      membership_instance.gym == self 
    end
  end

  def all_lifters
    self.all_memberships.map do |membership_instance|
      membership_instance.lifter 
    end
  end

  def all_lifter_names
    self.all_lifters.map do |lifter_instance|
      lifter_instance.name 
    end
  end

  def combined_lift_total
    combined_total = 0

    self.all_lifters.map do |lifter_instance|
      combined_total += lifter_instance.lift_total
    end
    combined_total
  end
end


