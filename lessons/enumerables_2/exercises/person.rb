# Part ONE
# Given the objects and array below, write the code that returns minimum and maximum values:
# By name (alphabetically)
# By age (youngest and oldest)
# By name length (shortest and longest)
# By number of children (least and most)

#Part TWO
# Given the object and array below, write the code that returns the sorted values:
# By name (alphabetically)
# By age (youngest to oldest)
# By name length (shortest to longest)
# By number of children (least to most)


class Person
  attr_reader :name,
              :age,
              :children

  def initialize(name, age, kids)
    @name = name
    @age  = age
    @children = kids
  end
end


require 'rspec'

describe 'new enumerables' do
  before(:each) do
    @kardashians = []
    @kardashians << Person.new("Kourtney", 42, ["Mason", "Penelope", "Reign"])
    @kardashians << Person.new("Kim", 41, ["North", "Saint", "Chicago", "Psalm"])
    @kardashians << Person.new("Kris", 65, ["Kourtney", "Kim", "Khloe", "Rob", "Kendall", "Kylie"])
    @kardashians << Person.new("Khloe", 37, ["True"])    
  end

  it 'returns the kardashian with the earliest alphabetical name' do
    earliest_name = @kardashians.min_by do |kardashian|
      kardashian.name
    end.name

    expect(earliest_name).to eq("Khloe")
  end

  it 'returns the kardashian with the latest alphabetical name' do
    latest_name = @kardashians.max_by do |kardashian|
      kardashian.name
    end.name

    expect(latest_name).to eq("Kris")
  end

  it 'returns the youngest kardashian' do
    youngest = @kardashians.min_by do |kardashian|
      kardashian.age
    end.name

    expect(youngest).to eq("Khloe")
  end

  it 'returns the oldest kardashian' do
    oldest = @kardashians.max_by do |kardashian|
      kardashian.age
    end.name

    expect(oldest).to eq("Kris")
  end

  it 'returns the kardashian with the shortest name' do
    shortest_name = @kardashians.min_by do |kardashian|
      kardashian.name.length
    end.name

    expect(shortest_name).to eq("Kim")
  end

  it 'returns the kardashian with the longest name' do
    longest_name = @kardashians.max_by do |kardashian|
      kardashian.name.length
    end.name

    expect(longest_name).to eq("Kourtney")
  end

  it 'returns the kardashian with the fewest children' do
    fewest_kids = @kardashians.min_by do |kardashian|
      kardashian.children.count
    end.name

    expect(fewest_kids).to eq("Khloe")
  end

  it 'returns the kardashian with the most children' do
    most_kids = @kardashians.max_by do |kardashian|
      kardashian.children.count
    end.name

    expect(most_kids).to eq("Kris")
  end

  it 'sorts them alphabetically' do
    sorted_alphabetically = @kardashians.sort_by do |kardashian|
      kardashian.name
    end

    sorted_alphabetically.map! do |kardashian|
      kardashian.name
    end
    expect(sorted_alphabetically).to eq(["Khloe", "Kim", "Kourtney", "Kris"])
  end

  it 'sorts them youngest to oldest' do
    youngest_first = @kardashians.sort_by do |kardashian|
      kardashian.age
    end

    youngest_first.map! do |kardashian|
      kardashian.name
    end

    expect(youngest_first).to eq(["Khloe", "Kim", "Kourtney", "Kris"])
  end

  it 'sorts them oldest to youngest' do
    oldest_first = @kardashians.sort_by do |kardashian|
      -kardashian.age
    end

    oldest_first.map! do |kardashian|
      kardashian.name
    end

    expect(oldest_first).to eq(["Kris", "Kourtney", "Kim", "Khloe"])
  end

  it 'sorts them by shortest name length' do
    shortest_names_first = @kardashians.sort_by do |kardashian|
      kardashian.name.length
    end

    shortest_names_first.map! do |kardashian|
      kardashian.name
    end

    expect(shortest_names_first).to eq(["Kim", "Kris", "Khloe", "Kourtney"])
  end

  it 'sorts them by longest name length' do
    longest_names_first = @kardashians.sort_by do |kardashian|
      -kardashian.name.length
    end

    longest_names_first.map! do |kardashian|
      kardashian.name
    end

    expect(longest_names_first).to eq(["Kourtney", "Khloe", "Kris", "Kim"])
  end

  it 'sorts them by fewest children' do
    fewest_children_first = @kardashians.sort_by do |kardashian|
      kardashian.children.length
    end

    fewest_children_first.map! do |kardashian|
      kardashian.name
    end

    expect(fewest_children_first).to eq(["Khloe", "Kourtney", "Kim", "Kris"])
  end

  it 'sorts them by most children' do
    most_children_first = @kardashians.sort_by do |kardashian|
      -kardashian.children.length
    end

    most_children_first.map! do |kardashian|
      kardashian.name
    end

    expect(most_children_first).to eq(["Kris", "Kim", "Kourtney", "Khloe"])
  end
end
