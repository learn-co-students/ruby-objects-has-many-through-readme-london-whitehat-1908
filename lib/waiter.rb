class Waiter
    attr_accessor :experience, :name
    @@all = []
    def initialize(name, experience)
        @name = name
        @experience = experience
        @@all << self
    end
    def self.all()
        @@all
    end
    def new_meal(customer, total, tip=0)
        Meal.new(self, customer, total, tip)
    end
    def meals()
        Meal.all.select do |food|
        food.waiter == self
        end
    end
    def best_tipper()
        bestTip = meals.max do |food_1, food_2|
            food_1.tip <=> food_2.tip 
        end
        bestTip.customer
    end
end