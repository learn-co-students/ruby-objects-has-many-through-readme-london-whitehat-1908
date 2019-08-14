class Customer
  attr_accessor :name, :years, :meals

  @@all = []

  def initialize(name, years)
    @name = name
    @years = years
    @@all << self
    @meals = []
  end

  def self.all
    @@all
  end

  def new_meal(waiter, total, tip)
    Meal.new(waiter, self, total, tip)
  end

  def waiters
    @meals.map { |meal| meal.waiter }
  end
end