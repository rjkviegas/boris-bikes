require 'dockingstation.rb'

describe DockingStation do
    it 'instance of DockingStation responds to release_bike method' do
        expect(DockingStation.new.respond_to?:release_bike).to eq true
    end

    it 'calling release_bike on an instance of DockingStation returns instance of Bike' do
        expect(DockingStation.new.release_bike.is_a?(Bike)).to eq true
        expect(DockingStation.new.release_bike.working?).to eq true
    end

    it 'instance of DockingStation responds to dock_bike method' do
        expect(DockingStation.new.respond_to?:dock_bike).to eq true
    end

    it 'calling .bikes on DockingStation instance returns number of bikes' do
        expect(DockingStation.new.bikes).to eq 0
    end

    it 'passing a bike into dock_bike increases bikes variable by 1' do
        expect(DockingStation.new.dock_bike(Bike.new)).to eq 1
    end
end
