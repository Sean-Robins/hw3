#old version of data load - use create_sample_data.rb instead

Place.destroy_all

# Create Place

place = Place.new 
place["name"] = "Pennsylvania"
place.save 

place = Place.new 
place["name"] = "Chicago"
place.save 