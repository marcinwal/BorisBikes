require './lib/garage.rb'

describe Garage do 
	let(:garage) {Garage.new}
	let(:bike) {Bike.new}
	let(:van) {Van.new}

	it "should take bikes from van" do
		bike1, bike2 = Bike.new, Bike.new
		bike1.break!
		bike2.break!
		garage.load(bike1)
		garage.load(bike2)
		expect(garage.bkn_bikes).to eq (2)
	end 

	it "should repair bikes" do
		garage.repair
		expect(garage.bkn_bikes).to eq (0)
	end

	it "should release bikes" do
		bike1, bike2 = Bike.new, Bike.new
		bike1.break!
		bike2.break!
		garage.load(bike1)
		garage.load(bike2)
		garage.repair
		garage.release(2)
		expect(garage.rep_bikes).to eq (0)
	end

	# it "should repair bikes instantly" do
	# 	bike.break!
	# 	garage.load(bike)
	# 	expect(garage.bkn_bikes).to eq(0)
	# end

end