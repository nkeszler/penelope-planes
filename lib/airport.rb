require 'weather'

class Airport

	include Weather

	attr_accessor :capacity , :planes

	def initialize(capacity = 10)
		self.capacity = capacity
		self.planes = []
	end

	def request_landing(plane)
		planes << plane unless planes.length >= capacity || weather == :stormy
	end

	def request_take_off(plane)
		planes.slice!(planes.index(plane)) unless weather == :stormy
	end

end