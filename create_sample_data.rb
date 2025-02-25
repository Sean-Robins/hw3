#place data
Place.destroy_all
Entry.destroy_all

# Create Place

place = Place.new 
place["name"] = "Pennsylvania"
place.save 

place = Place.new 
place["name"] = "Chicago"
place.save 

#entry data

require 'date'

pa = Place.find_by({"name" => "Pennsylvania"})

# Create entry

entry = Entry.new 
entry["title"] = "Liberty Bell"
entry["description"] = "Saw the bell with the crack"
entry["occurred_on"] = Date.today
entry["place_id"] = pa["id"]
entry.save 

entry = Entry.new 
entry["title"] = "Sixers"
entry["description"] = "went to sixers game"
entry["occurred_on"] = Date.today - 1
entry["place_id"] = pa["id"]
entry.save 

#all_entries = Entry.all 

#puts all_entries.inspect 