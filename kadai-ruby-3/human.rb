require "./thinkable.rb"
require "./animal.rb"

class Human < Animal
    attr_accessor :interest
    include Thinkable
    
    def initialize(name,age,interest)
        super(name,age)
        self.interest = interest
    end
end