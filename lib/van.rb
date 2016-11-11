class Van
  attr_reader :stored_bikes

  def initialize
    @stored_bikes = []

  end

  def collect_broken_bikes(docking_station)
    docking_station.gather_broken_bikes
    @stored_bikes << docking_station.broken_bikes
  end

end
