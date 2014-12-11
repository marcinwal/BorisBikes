require_relative 'bike_container'

class DockingStation

	include BikeContainer

	# DEFAULT_CAPACITY = 10

	def initialize(options = {})
		# @bikes = []  			  
		#@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
		self.capacity = options.fetch(:capacity, capacity)
	end	

	# def bike_count
	# 	@bikes.count 
	# end

	# def dock(bike)
	# 	raise "Station is full" if full?
	# 	@bikes << bike
	# end

	# def full?
	# 	bike_count == @capacity
	# end

	# def release(bike)
	# 	@bikes.delete(bike)
	# end

	# def available_bikes
	# 	@bikes.reject {|bike| bike.broken?}
	# end	

	def broken_bikes
		bikes.select {|bike| bike.broken?}
	end

	def count_broken
		bikes.select{|bike| bike.broken?}.count
	end

  def release_bikes(options={})
    max = options.fetch(:maximum, capacity)
    ready_to_release = bikes.select{:broken?}[0..max]
    ready_to_release.each{|b| release b}
    ready_to_release
  end

	def release_N_bkn(number_of_bikes)
		deleted = []
		count = 0
		bikes.select{|bike| bike.broken?}.each do |del|
			deleted << release(del)
			count += 1
			break if count == number_of_bikes
		end	
		return deleted
	end

end
