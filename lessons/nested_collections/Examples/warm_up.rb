animals = {"dogs" => 3, "cats" => 5, "iguanas" => 2}

# 1. return the value of dogs
puts animals["dogs"]

# 2. add 3 parakeets
animals["parakeets"] = 3
puts animals["parakeets"]

# 3. increase the amount of cats by 2
animals["cats"] += 2
puts animals["cats"]



pet_names = ["Fela", "Spot", "Patch", "Willy"]
p pet_names

# 1. add “Claude” to the end of the array
pet_names.append("Claude") # || pet_names = pet_names + ["Claude"] || pet_names << "Claude"
p pet_names

# 2. access the first name in the list
p pet_names[0] # || pet_names.first

# 3. access the last name in the list
p pet_names[-1] # || pet_names.last

# 4. remove “Fela” from the list
pet_names.delete("Fela") # || pet_names.shift || pet_names.delete_at(0) || pet_names -= ["Fela"]
p pet_names