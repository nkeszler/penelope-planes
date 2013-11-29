module Weather

	def weather
		rand > 0.8 ? :stormy : :sunny
	end
end