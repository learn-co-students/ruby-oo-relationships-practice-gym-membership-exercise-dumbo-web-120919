class Gym
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  #list all memberships at  gym
  def memberships
    Membership.all.select{|membership| membership.gym == self}
  end
  #returns all lifters at this gym
  def lifters
    Membership.all.map do |membership| 
      if membership.gym == self
        membership.lifter
      end
    end.compact
  end
  #returns names of all lifters at this gym
  def lifter_names
    self.lifters.map{|lifter| lifter.name}
  end
  #gets combined lift total of all lifters at gym
  def lifter_total
    self.lifters.map{|lifter| lifter.lift_total}.sum
  end
end