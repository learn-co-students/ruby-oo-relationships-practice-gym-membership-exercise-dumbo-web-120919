class Lifter

  attr_reader :name, :lift_total

  @@all = []

  # INIT #

  def initialize(name, lift_total)    # WORKS #
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  # END INIT #

  # INSTANCE METHODS #

  def sign_up(gym, cost)    # WORKS #
    Membership.new(self, gym, cost)
  end

  def memberships     # WORKS #
    Membership.all.select { |membership| membership.lifter == self }
  end

  def memberships_cost    # WORKS #
    own_memberships = self.memberships
    costs = own_memberships.collect { |memberships| memberships.cost }
    total = costs.inject { |sum, n| sum += n }
    total
  end

  def gyms    # WORKS #
    own_memberships = self.memberships
    gyms = own_memberships.collect { |memberships| memberships.gym }
    gyms
  end

  # END INSTANCE METHODS #

  # CLASS METHODS #

  def self.all  # WORKS #
    @@all
  end

  def self.average_lift    # WORKS #
    all_lifts = @@all.collect { |lifter| lifter.lift_total }
    lifts_total = all_lifts.inject { |sum, n| sum += n }
    average_lift = lifts_total / all_lifts.count
    average_lift
  end

  # END CLASS METHODS #

end
