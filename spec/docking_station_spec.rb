require '../lib/docking_station'

describe "docking station" do
  it "creates a new instance of docking station" do
    expect(dock = DockingStation.new).to eq dock
  end
end
