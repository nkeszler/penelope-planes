require 'airport'
require 'plane'
 
# A plane currently in the airport can be requested to take off.
#
# No more planes can be added to the airport, if it's full.
# It is up to you how many planes can land in the airport and how that is impermented.
#
# If the airport is full then no planes can land
describe Airport do
  let(:airport) { Airport.new }
  let(:plane) {Plane.new}

  it 'should have a capacity of 10 planes' do
    expect(airport.capacity).to eq(10)
  end
  
  context 'taking off and landing' do
    it 'a plane can land' do
      airport.stub(:weather) {:sunny}
      airport.request_landing(plane)
      expect(airport.planes).to eq([plane])
    end
    
    it 'a plane can take off' do
      airport.stub(:weather) {:sunny}
      airport.request_landing(plane)
      airport.request_take_off(plane)
      expect(airport.planes).to eq([])
    end
  end
  
  context 'traffic control' do
    it 'a plane cannot land if the airport is full' do
      airport.planes = [plane,plane,plane,plane,plane,plane,plane,plane,plane,plane]
      airport.request_landing(plane)
      expect(airport.planes.length).to eq(10)
    end
    
    # Include a weather condition using a module.
    # The weather must be random and only have two states "sunny" or "stormy".
    # Try and take off a plane, but if the weather is stormy, the plane can not take off and must remain in the airport.
    # 
    # This will require stubbing to stop the random return of the weather.
    # If the airport has a weather condition of stormy,
    # the plane can not land, and must not be in the airport
    context 'weather conditions' do
      it 'a plane cannot take off when there is a storm brewing' do
        airport.stub(:weather) {:stormy}
        airport.planes = [plane]
        airport.request_take_off(plane)
        expect(airport.planes).to eq([plane])
      end
      
      it 'a plane cannot land in the middle of a storm' do
        airport.stub(:weather) {:stormy}
        airport.planes = []
        airport.request_landing(plane)
        expect(airport.planes).to eq([])
      end
    end
  end
end
 