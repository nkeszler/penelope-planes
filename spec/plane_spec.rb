require 'airport'
require 'plane'

describe Plane do
 
  let(:plane) { Plane.new }
  
  it 'has a flying status when created' do
  	expect(plane.flying?).to be_true
  end
  
  it 'has a flying status when in the air' do
  	plane.in_the_air = true 
  	expect(plane.flying?).to be_true
  end
  
  it 'can take off' do
  	plane.take_off
  end
  
  it 'changes its status to flying after taking of' do
  	plane.take_off
  	expect(plane.flying?).to be_true
  end
end
 
# grand final
# Given 6 planes, each plane must land. When the airport is full, every plane must take off again.
# Be careful of the weather, it could be stormy!
# Check when all the planes have landed that they have the right status "landed"
# Once all the planes are in the air again, check that they have the status of flying!
describe "The grand finale (last spec)" do
  it 'all planes can land and all planes can take off' do
  end
end