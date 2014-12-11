require './lib/dockingstation'
require './lib/bike_container'


describe DockingStation do
 
 # let(:bike) {Bike.new}
 let(:station) {DockingStation.new(:capacity => 123)} 
 #let(:broken_bike) {(Bike.new).break!}

 it 'should allow setting default capacity on initialising' do
 	expect(station.capacity).to eq(123)
 end

#  def fill_station(station)
#  	20.times {station.dock(Bike.new)}
#  end

#  it "should accept a bike" do
#   expect(station.bike_count).to eq(0)
#   station.dock(bike)
#   expect(station.bike_count).to eq(1)
#  end

# it "should release a bike" do
# 	station.dock(bike)
# 	station.release(bike)
# 	expect(station.bike_count).to eq(0)
# end

# it "should know if it is full" do
# 	expect(station).not_to be_full
# 	fill_station(station)
# 	expect(station).to be_full
# end

# it "should not accept a bike if it is full" do
# 	fill_station(station)
# 	expect(lambda {station.dock(bike)}).to raise_error(RuntimeError, 'Station is full')
# end

# it 'should provide the list of available bikes ' do
# 	working_bike, broken_bike = Bike.new, Bike.new
# 	broken_bike.break!
# 	station.dock(working_bike)
# 	station.dock(broken_bike)
# 	expect(station.available_bikes).to eq ([working_bike])
# end

# it 'should provide the list of broken bikes ' do
# 	working_bike, broken_bike = Bike.new, Bike.new
# 	broken_bike.break!
# 	station.dock(working_bike)
# 	station.dock(broken_bike)
# 	expect(station.broken_bikes).to eq ([broken_bike])
# end

# it 'should provide a number of broken bikes' do
# 	broken_bike = Bike.new
# 	broken_bike.break!
# 	station.dock(broken_bike)
# 	expect(station.count_broken).to eq(1)
# end	

end