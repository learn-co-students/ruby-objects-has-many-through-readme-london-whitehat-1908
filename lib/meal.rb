class Meal
    attr_accessor :waiter, :customer, :total, :tip

  @@all = []

  def initialize(waiter, customer, total, tip=0)
    @waiter = waiter
    @waiter.meals << self
    @customer = customer
    @customer.meals << self
    @total = total
    @tip = tip
    @@all << self
  end

  def self.all
    @@all
  end
end