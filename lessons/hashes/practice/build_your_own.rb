# Your turn to create a hash. Make sure to use symbols for the keys.

# Create your hash here

# Steps
# 1. Create a hash called new_band.
new_band = {}
# 2. Add a bassist to your new_band hash.
new_band[:bassist] = "Patrick"
# 3. Find the name of your bassist by accessing the :bassist key in the new_band hash.
p new_band[:bassist] #returns "Patrick"
# 4. Find the value attached to :vocalist in your hash.
p new_band[:vocalist] #value is nil
# 5. Add a vocalist to your hash.
new_band[:vocalist] = "Kristin"
# 6. Add a drummer to your hash.
new_band[:drummer] = "Dustin"
# 7. Get all the keys in your Hash. What kind of object does that method return?
p new_band.keys #array
# 8. Get all the values in your Hash. What kind of object does that method return?
p new_band.values #array
# 9. Assign a new value to the :vocalist key of your hash.
new_band[:vocalist] = "Patrick"
# 10. How has keys changed after the last step? How has values changed?
p new_band.keys #keys has not changed
p new_band.values #"patrick" replaced "kristin" as the new vocalist