class Plane

	attr_accessor :in_the_air

	def initialize
		self.in_the_air = true
	end
	
	def flying?
		in_the_air
	end

	def take_off(airport)
		airport.request_take_off(self)
		self.in_the_air = true
	end

	def land(airport)
		airport.request_landing(self)
		self.in_the_air = false
	end
end