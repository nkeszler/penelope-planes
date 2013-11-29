require 'weather'

class WeatherCondition; include Weather; end

describe Weather do

	let(:weather_condition) {WeatherCondition.new}

	it "should know the weather conditions" do
		expect(weather_condition.weather).not_to eq(nil)
	end

	it "should know when it is sunny" do
		weather_condition.stub(:weather) {:sunny}
		expect(weather_condition.weather).to eq(:sunny)
	end

	it "should know when it is stormy" do
		weather_condition.stub(:weather) {:stormy}
		expect(weather_condition.weather).to eq(:stormy)
	end

end