class Gate
	STATIONS = [:umeda,:juso,:mikuni]
	FARES    = [150,190]

	def initialize(name)
		@name = name
	end

	def enter(ticket)
		ticket.stump(@name)
	end

	def calc_fare(ticket)
		from = STATIONS.index(ticket.stump_at)
		to	 = STATIONS.index(@name)
		distance = to - from
		FARES[distance - 1]
	end

	def exit(ticket)
		fare = calc_fare(ticket)
		fare <= ticket.fare
	end





end
