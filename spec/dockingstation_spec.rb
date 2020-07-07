require 'dockingstation.rb'

describe DockingStation do
    it 'instance of DockingStation responds to release_bike method' do
        expect(DockingStation.new.respond_to?:release_bike).to eq true
    end
end
