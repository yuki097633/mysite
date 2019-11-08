class Ticket
	attr_reader :fare,:stump_at

	def initialize(fare)
	  @fare = fare
	end

	def stump(name)
		@stump_at = name
	end
end
