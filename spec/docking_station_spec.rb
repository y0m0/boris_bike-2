require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it "releases working bikes" do

    bike = Bike.new
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to :bikes }

  it "docks a bike" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq [bike]
  end

  it "returns docked bikes" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes).to eq [bike]
  end

  describe '#release_bike' do
    it 'release_bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error if there is no bikes avialable' do
      expect { subject.release_bike }.to raise_error("No bikes available")
    end
  end

  describe '#dock' do
    it 'raise error when full' do
      DockingStation::DEFAULT_CAPACITY.times do
        subject.dock(Bike.new)
      end
      expect { subject.dock(Bike.new) }.to raise_error("Docking station full")
    end
  end
end
