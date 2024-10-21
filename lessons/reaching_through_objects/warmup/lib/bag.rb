class Bag
  attr_reader :candies

  def initialize
    @candies = []
  end

  def empty?
    @candies.empty?
  end

  def count
    @candies.count
  end

  def add_candy(candy)
    @candies << candy
  end

  def contains?(type)
    @candies.any? do |candy|
      type == candy.type
    end
  end

  def <<(candy)
    @candies << candy
  end

  def remove_candy
    @candies.pop
  end
end