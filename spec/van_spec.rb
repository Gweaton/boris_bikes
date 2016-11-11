require 'van'

describe Van do

  it 'should pick up broken bikes from the docking station' do
    docking_station = DockingStation.new
    stored_bikes = subject.collect_broken_bikes(docking_station)
    expect(stored_bikes).not_to be_empty
  end

end
