class Plane

	attr_accessor :in_the_air

	def initialize
		self.in_the_air = true
	end
	
	def flying?
		in_the_air
	end

	def take_off
		self.in_the_air = true
	end

	def land
		self.in_the_air = false
	end
end