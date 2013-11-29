require 'airport'
require 'plane'

describe Plane do
 
  let(:plane) { Plane.new }
  let(:airport) {Airport.new}
  
  it 'has a flying status when created' do
  	expect(plane.flying?).to be_true
  end
  
  it 'has a flying status when in the air' do
  	plane.in_the_air = true 
  	expect(plane.flying?).to be_true
  end
  
  it 'can take off' do
  	airport.planes = [plane]
  	plane.take_off(airport)
  end
  
  it 'changes its status to flying after taking of' do
  	airport.planes = [plane]
  	plane.take_off(airport)
  	expect(plane.flying?).to be_true
  end
end
 