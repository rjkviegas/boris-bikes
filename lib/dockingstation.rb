require './lib/bike.rb'
class DockingStation
    attr_reader :bikes
    def initialize(number_of_bikes=0)
        @bikes = number_of_bikes
    end
    def release_bike
        bike = Bike.new
    end
    def dock_bike(bike)
        
        @bikes += 1
    end
end
