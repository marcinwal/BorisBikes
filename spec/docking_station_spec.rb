require './lib/bike_container'

class ContainerHolder; include BikeContainer; end

describe BikeContainer do 

	let(:bike) {Bike.new}
	let(:holder) {ContainerHolder.new}

	it 'should accept a bike' do
		expect(holder.bike_count).to eq(0)
		holder.dock(bike)
		expect(holder.bike_count).to eq(1)
	end

	it  "should raise an error if no bike" do
		expect(lambda {holder.release(bike)}).to raise_error(RuntimeError, 'no bike available')
		#expect(holder.release(bike)).to raise_error(RuntimeError, 'no bike available')
	end

	it "should return empty if empty" do
		expect(holder).to be_empty
	end

end 