require 'rspec'
require './lib/apartment'

describe Apartment do
  it 'exists' do
    apartment = Apartment.new
    expect(apartment).to be_an_instance_of(Apartment)
  end

  it 'can check if it is rented' do
    apartment = Apartment.new
    expect(apartment.is_rented?).to be false
  end

  it 'can be rented' do
    apartment = Apartment.new
    expect(apartment.is_rented?).to be false

    apartment.rent
    expect(apartment.is_rented?).to be true
  end

  it 'can have up to 4 rooms' do
    apartment = Apartment.new
    bathroom = Room.new("bathroom")

    apartment.add_room(bathroom)
    apartment.add_room(Room.new("laundry"))
    apartment.add_room(Room.new("kitchen"))
    apartment.add_room(Room.new("bedroom"))

    expect(apartment.rooms.count).to eq(4)

    expect(apartment.list_rooms_by_name_alphabetically).to eq(["bathroom", "bedroom", "kitchen", "laundry"])
  end
end