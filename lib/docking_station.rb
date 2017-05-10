require './lib/bike.rb'

class DockingStation
  attr_reader :bike

  def initialize
    @bikes = []
  end


  def release_bike
    fail "No bikes available" unless @bikes.empty?
    @bike.pop
  end

  def dock(bike)
    puts bike
    fail "Docking station full" if @bikes.count >= 20
    @bikes << bike
  end


end
