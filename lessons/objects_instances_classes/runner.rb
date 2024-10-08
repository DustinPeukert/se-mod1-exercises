require "./lib/dog"
require "./lib/unicorn"
require "./lib/power"

clifford = Dog.new("Clifford", "red")
fido = Dog.new("Fido", "golden")

clifford.name

sparkles = Unicorn.new("Sparkles", "rainbow")
bob = Unicorn.new("Bob", "white")

flight = Power.new("Flight", 7)
invisibility = Power.new("Invisibility", 5)

sparkles.add_power(flight)
bob.add_power(invisibility)

require "pry"; binding.pry