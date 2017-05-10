require './lib/bike.rb'

class DockingStation

  def bike
    @bike
  end

  def release_bike
    Bike.new
  end

  def dock(bike)
    @bike = bike
  end


end
