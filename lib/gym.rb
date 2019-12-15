class Gym

  attr_reader :name

  @@all = []

  # INIT #

  def initialize(name)    # WORKS #
    @name = name
    @@all << self
  end

  # END INIT

  # INSTANCE METHODS #

  def memberships   # WORKS #
    Membership.all.select { |membership| membership.gym == self }
  end

  def lifters   # WORKS #
    memberships.collect { |membership| membership.lifter }
  end

  def lifter_names    # WORKS #
    lifters.collect { |lifter| lifter.name }
  end

  def lift_total    # WORKS #
    all_lifts = lifters.collect { |lifter| lifter.lift_total }
    lift_average = ((all_lifts.inject { |sum, n| sum += n }) / (all_lifts.count))
    lift_average
  end

  # END INSTANCE METHODS #

  # CLASS METHODS #

  def self.all    # WORKS #
    @@all
  end



  # END CLASS METHODS #
end
