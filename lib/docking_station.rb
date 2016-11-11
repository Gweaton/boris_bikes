require_relative 'bike'
require_relative 'van'

class DockingStation
attr_reader :bikes, :capacity, :broken_bikes

DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
    @broken_bikes = []
  end

  def release_bike
    empty?
    bike = @bikes.index{|bike| bike.status == true}
    fail "No working bikes available." if bike.nil?
    @bikes.slice!(bike)
  end

  def gather_broken_bikes
    @bikes, @broken_bikes = @bikes.partition {|bike| bike.status != false}
    @broken_bikes
  end

  def dock_bike(bike)
    @bikes << bike unless full?
  end

  private

  def full?
    fail "The dock is full." if @bikes.length >= @capacity
  end
  def empty?
    fail "No bikes available" if @bikes.empty?
  end


end
