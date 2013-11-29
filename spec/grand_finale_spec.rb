# grand final
# Given 6 planes, each plane must land. When the airport is full, every plane must take off again.
# Be careful of the weather, it could be stormy!
# Check when all the planes have landed that they have the right status "landed"
# Once all the planes are in the air again, check that they have the status of flying!
require 'airport'
require 'plane'

describe "The grand finale (last spec)" do

	let(:airport){Airport.new}
	let(:plane){Plane.new}

  it 'all planes can land and all planes can take off' do
	airport.stub(:weather) {:sunny}
  	6.times {plane.land(airport)}
  	expect(airport.planes.length).to eq(6)
  	airport.planes.each{|plane| expect(plane.flying?).not_to be_true}
  	airport.planes.each {|plane| plane.take_off(airport)}
  	airport.planes.each{|plane| expect(plane.flying?).to be_true}
  end
end