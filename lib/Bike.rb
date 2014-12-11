class Bike
	def initialize(bike_id = 0)
		@broken = false
		@rented = 0
		@bike_id = bike_id
	end

	def broken?
		@broken
	end

	def break!
		@broken = true
	end

	def fix!
		@broken = false
	end

	def rent(user)
		@rented = user
	end

	def rented?
		@rented  != 0
	end

	def bike_id
		@bike_id
	end

end
