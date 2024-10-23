# Part One
# Given the follow array:
animals = [:dog, :cat, :zebra, :quokka, :unicorn, :bear]

# Use an enumerable to
# 1. Return an array of animals as strings.
str_animals = []

animals.each do |animal|
  str_animals << animal.to_s
end

p str_animals

# 2. Return an array of animals with a length >= 4.
long_animals = []

animals.each do |animal|
  if animal.length >= 4
    long_animals << animal
  end
end

p long_animals