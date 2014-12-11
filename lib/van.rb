class Van

  VAN_CAPACITY = 4

  include BikeContainer

  attr_reader :bikes

	def initialize(options = {})

    
		@capacity = options.fetch(:capacity, VAN_CAPACITY) 
    raise "Not a number" unless @capacity.is_a?(Fixnum)
    raise "Should be above zero" if @capacity <= 0
		@bikes = []
	end

	def bikes_in_van
		@bikes.count
	end

	def free_space
		@capacity - bikes_in_van
	end	

	# def load(*bike)
	# 	@bikes << bike
	# end
    
	def collect(station)
		how_many_bkn = station.count_broken
		to_take = [free_space,how_many_bkn].min
		station.release_N_bkn(to_take).each {|bk| @bikes << bk }
	end	

	# def collect(station)
	# 	station.release_broken_bikes(maximum:free_space).each {|bk| @bikes << bk }
  # end

  def collect_fm_garage(garage)
    @bikes = garage.release(free_space)
  end


	def full?
		free_space == 0
	end

	def unload()
		@bikes.pop(bikes_in_van)
	end

	def unload_nbikes(n)
		@bikes.pop(n)
	end

end