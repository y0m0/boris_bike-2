require 'docking_station'

describe DockingStation do
  # it "release bike when called on a docking station instance" do
  #   dock = DockingStation.new
  #   dock.release_bike
  # end
  subject { dock = DockingStation.new }
  it { subject.release_bike }
end
