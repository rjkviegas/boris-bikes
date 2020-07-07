require 'dockingstation.rb'

describe DockingStation do
    it 'instance of DockingStation responds to release_bike method' do
        expect(DockingStation.new.respond_to?:release_bike).to eq true
    end

    it 'calling release_bike on an instance of DockingStation returns instance of Bike' do
        expect(DockingStation.new.release_bike.is_a?(Bike)).to eq true
        expect(DockingStation.new.release_bike.working?).to eq true
    end
end
