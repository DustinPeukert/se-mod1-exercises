# Part Two
# Given the following array:
nested_animals = [[:dog, :cat, :zebra], [:quokka, :unicorn, :bear]]

# Use an enumerable to:
# 1. Return an unnested (single layer) array of animals as strings
str_animals = []

nested_animals.each do |group|
  group.each do |animal|
    str_animals << animal.to_s
  end
end

p str_animals
# 2. Return an unnested array of animals with length >= 4
long_animals = []

nested_animals.each do |group|
  group.each do |animal|
    if animal.length >= 4
      long_animals << animal
    end
  end
end

p long_animals
# 3. Return a hash where the keys are the animal, and the values are the length. ex: {dog: 3, cat: 3, zebra: 5 ... }
animals = {}

nested_animals.each do |group|
  group.each do |animal|
    animals[animal] = animal.length
  end
end

p animals