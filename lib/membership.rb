class Membership

  attr_reader :lifter, :gym, :cost

  @@all = []

  # INIT #

  def initialize(lifter, gym, cost)
    @gym = gym
    @lifter = lifter
    @cost = cost
    @@all << self
  end

  # END INIT #

  # CLASS METHODS #

  def self.all
    @@all
  end

  # END CLASS METHODS #

end
