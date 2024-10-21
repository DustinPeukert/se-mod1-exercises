require 'rspec'
require './lib/room'

describe Room do
  it 'exists' do
    bathroom = Room.new("bathroom")
    expect(bathroom).to be_an_instance_of(Room)
  end

  it 'has a name' do
    bathroom = Room.new("bathroom")
    expect(bathroom.name).to eq("bathroom")
  end
end