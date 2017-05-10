require './lib/bike.rb'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.count >= 20
  end

  def release_bike
    fail "No bikes available" if empty?
    @bikes.pop
  end

  def dock(bike)
    fail "Docking station full" if full?
    @bikes << bike
  end


end
