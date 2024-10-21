class Apartment
  def initialize
    @rented = false
  end

  def is_rented?
    @rented
  end

  def rent
    @rented = true
  end

  def add_room(room)

  end
end