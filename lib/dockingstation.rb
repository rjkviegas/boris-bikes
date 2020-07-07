require './lib/bike.rb'
class DockingStation
    attr_reader :bikes, :bikes_array
    def initialize(number_of_docked_bikes=0)
        @bikes_array = []
        count = 1
        while count <= number_of_docked_bikes
            @bikes_array << Bike.new
            count += 1
        end
        @bikes = @bikes_array.count
    end

    def release_bike
        if @bikes > 0
            @bikes -= 1
            @bikes_array.pop
        else
            "There are no bikes available"
        end
    end
    def dock_bike(bike)
        @bikes_array << bike
        @bikes += 1
        self
    end

    def docked_bike?
        if @bikes > 0
            true
        else
            false
        end
    end
end
