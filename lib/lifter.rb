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
  #returns all memberships this lifter has
  def all_memberships
    Membership.all.select{|membership| membership.lifter == self}
  end
  #returns all gyms lifter has memberships at
  def all_gyms
    Membership.all.map do |membership| 
      if membership.lifter == self
        membership.gym
      end
    end
  end
  #returns average lift total of all lifters
  def self.ave_total_lift
    Lifter.all.sum{ |lifter| lifter.lift_total}.to_f / Lifter.all.length
  end
  #returns total cost of lifter's gym memberships
  def total_cost
    self.all_memberships.map{|membership| membership.cost}.sum
  end
  #signs lifter up for new membership
  def new_membership(cost, gym)
    Membership.new(cost, gym, self)
  end
end