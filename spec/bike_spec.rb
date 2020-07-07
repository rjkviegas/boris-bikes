require 'bike.rb'
describe Bike do
  it "tests whether bike responds to working? method" do
    expect(Bike.new.respond_to?:working?).to eq true
  end
end   